import 'package:flutter/material.dart';
import '../widgets/facebook_custom_tile.dart';
import '../widgets/story_custom_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            StoryCustomTile(profileImage: '', storyImage: ''),
          
            FacebookCustomTile(
              Profile_Pic_Url: '',
              Profile_border_color: Colors.white,
              My_name: 'User',
              Post_Url: '',
              Post_date: 'Just now',
              Post_title: 'Hello!',
              Like_numbers: '1k',
              comment_numbers: '100',
              share_numbers: '10',
            ),
          ],
        ),
      ),
    );
  }
}
