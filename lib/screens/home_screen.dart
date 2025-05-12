import 'package:flutter/material.dart';
import 'chapter_tab.dart';
import 'question_tab.dart';
import 'analytics_tab.dart';
import 'settings_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    ChapterTab(),
    QuestionTab(),
    AnalyticsTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BIOLOGY🧬'), elevation: 0),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (idx) => setState(() => _currentIndex = idx),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Chapters'),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: 'Practice'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Analytics'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'More'),
        ],
      ),
    );
  }
}