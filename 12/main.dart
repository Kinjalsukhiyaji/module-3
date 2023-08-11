import 'package:flutter/material.dart';
import 'package:module3/12/audiopage.dart';
import 'package:module3/12/videopage.dart';

import '../11/gallerypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryPage()));
                 // print('Gallery tapped');
                },
              ),
              ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text('Audio'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.video_collection_rounded),
                title: Text('Video'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
