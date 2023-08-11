import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Icon(Icons.warning, size: 40, color: Colors.orange),
              SizedBox(height: 16),
              Text('warning'),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.pop(context);
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
        title: Text('Alert Dialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert Dialog'),
          onPressed: () {
            _showAlertDialog(context);
          },
        ),
      ),
    );
  }
}
