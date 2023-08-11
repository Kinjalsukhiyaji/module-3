import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogScreen(),
    );
  }
}

class AlertDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
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

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an Option'),
          content: Text('This is the alert dialog content.'),
          actions: [
            TextButton(
              child: Text('Reminder me'),
              onPressed: () {
                Navigator.of(context).pop('Reminder me');
              },
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop('Ok');
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop('Cancel');
              },
            ),

          ],
        );
      },
    ).then((value) {
      if (value != null) {
        _showToast(value);
      }
    });
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: 'Selected option: $message',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}

void main() {
  runApp(AlertDialogExample());
}
