import 'package:flutter/material.dart';
import 'package:simple_thirukural_app/view/athikarankal_screen.dart';
import 'package:simple_thirukural_app/view/iyalkal_screen.dart';
import 'package:simple_thirukural_app/view/search_screen.dart';
import 'package:simple_thirukural_app/view/settings_screen.dart';
import 'package:simple_thirukural_app/model/popup_menu_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return menuItems;
              },
              onSelected: (String value) {
                // Perform navigation based on the selected value
                if (value == 'item1') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IyalkalScreen(),
                    ),
                  );
                } else if (value == 'item2') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AthikarankalScreen(),
                    ),
                  );
                } else if (value == 'item3') {
                  // Handle navigation for item 3
                } else if (value == 'item4') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                }
              },
            )
          ],
          title: const Text(
            'திருக்குறள்',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: ('அறம்'),
              ),
              Tab(
                text: ('பொருள்'),
              ),
              Tab(
                text: ('இன்பம்'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
