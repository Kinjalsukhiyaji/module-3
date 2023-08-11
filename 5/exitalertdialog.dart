import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exit alert dialog ',
      home:MyExitPage() ,
    );
  }
}
class MyExitPage extends StatefulWidget {
  const MyExitPage({super.key});

  @override
  State<MyExitPage> createState() => _MyExitPageState();
}

class _MyExitPageState extends State<MyExitPage> {
  Future<void> _showExitDialog() {
    return showDialog<void>(
      context: context,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Are You sure?'),
          content: Text('Do you want to exit from the app?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Dismiss alert dialog
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Dismiss alert dialog
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exit with Alert Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _showExitDialog,
                child: Text('Exit Button'),
            ),
          ],
        ),
      ),
    );
  }
}
