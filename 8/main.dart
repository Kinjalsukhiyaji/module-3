import 'package:flutter/material.dart';
import 'package:module3/8/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenu Widget',
      home: PopupMenuExample(),
    );
  }
}

class PopupMenuExample extends StatelessWidget {
  const PopupMenuExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [
          PopupMenuButton(
            padding: EdgeInsets.symmetric(vertical: 20),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: ListTile(
                  title: Text('Profile'),
                  onTap: () {
                    // Navigate to profile screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  title: Text('Logout'),
                  onTap: () {
                    // Navigate to profile screen
                    showAlertDialog(context, 'Logout',
                        'are you sure you want to logout from this application?');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
