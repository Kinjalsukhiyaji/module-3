import 'package:flutter/material.dart';
import 'package:module3/11/videopage.dart';
import 'audiopage.dart';
import 'gallerypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom navigation for gallery,audio and video',
      home:MyPage(),
    );
  }
}
class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    GalleryPage(),
    AudioPage(),
    VideoPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.photo),
    label: 'Gallery',
    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.audiotrack),
        label: 'Audio',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.video_library),
        label: 'Video',
      ),
    ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    ),

    );
  }
}