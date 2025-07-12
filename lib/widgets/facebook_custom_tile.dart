import 'package:flutter/material.dart';

class FacebookCustomTile extends StatelessWidget {
  final String Profile_Pic_Url;
  final Color Profile_border_color;
  final String My_name;
  final String Post_Url;
  final String Post_date;
  final String Post_title;
  final String Like_numbers;
  final String comment_numbers;
  final String share_numbers;

  const FacebookCustomTile({
    required this.Profile_Pic_Url,
    required this.Profile_border_color,
    required this.My_name,
    required this.Post_Url,
    required this.Post_date,
    required this.Post_title,
    required this.Like_numbers,
    required this.comment_numbers,
    required this.share_numbers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(Profile_Pic_Url)),
            title: Text(My_name),
            subtitle: Text(Post_date),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(Post_title),
          ),
          SizedBox(height: 10),
          Image.network(Post_Url),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('$Like_numbers Likes • $comment_numbers Comments • $share_numbers Shares'),
          ),
        ],
      ),
    );
  }
}
