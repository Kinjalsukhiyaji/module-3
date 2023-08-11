import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PermissionDialog(),
    );
  }
}

class PermissionDialog extends StatefulWidget {
  @override
  _PermissionDialogState createState() => _PermissionDialogState();
}

class _PermissionDialogState extends State<PermissionDialog> {
  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  Future<void> requestPermission() async {
    PermissionStatus status = await Permission.phone.request();

    if (status.isGranted) {
      // Permission granted, proceed with app functionality
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Call App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Phone Call App',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                requestPermission();
              },
              child: Text('Request Permission Again'),
            ),
          ],
        ),
      ),
    );
  }
}
