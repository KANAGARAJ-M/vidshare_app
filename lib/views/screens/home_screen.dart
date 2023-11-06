import 'package:flutter/material.dart';
import 'package:vidshare_app/constants.dart';
import 'package:vidshare_app/views/widgets/custom_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: pageIdx,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.integration_instructions, size: 20),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomIcon(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 20),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 20),
            label: '',
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
