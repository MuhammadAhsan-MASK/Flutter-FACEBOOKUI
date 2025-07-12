import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'videos_screen.dart';
import 'friends_screen.dart';
import 'marketplace_screen.dart';
import 'notifications_screen.dart';
import 'menu_screen.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({super.key});

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "facebook",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromARGB(255, 30, 136, 229),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          actions: [
            IconButton(icon: Icon(Icons.add_circle, color: Colors.black), onPressed: () {}),
            IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
            IconButton(icon: Icon(Icons.message, color: Colors.black), onPressed: () {}),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue[600],
            labelColor: Colors.blue[600],
            tabs: [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.ondemand_video_outlined)),
              Tab(icon: Icon(Icons.group_outlined)),
              Tab(icon: Icon(Icons.store_outlined)),
              Tab(icon: Icon(Icons.notifications_outlined)),
              Tab(icon: Icon(Icons.menu)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            VideosScreen(),
            FriendsScreen(),
            MarketplaceScreen(),
            NotificationScreen(),
            MenuScreen(),
          ],
        ),
      ),
    );
  }
}
