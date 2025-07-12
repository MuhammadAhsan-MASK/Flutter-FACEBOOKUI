import 'package:flutter/material.dart';

class StoryCustomTile extends StatelessWidget {
  final String profileImage;
  final String storyImage;

  const StoryCustomTile({
    required this.profileImage,
    required this.storyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(storyImage), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(profileImage),
          ),
        ),
      ),
    );
  }
}
