import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alertbox Example',
      home: AlertdialogBox(),
    );
  }
}
class AlertdialogBox extends StatefulWidget {
  const AlertdialogBox({Key? key}) : super(key: key);

  @override
  State<AlertdialogBox> createState() => _AlertdialogBoxState();
}

class _AlertdialogBoxState extends State<AlertdialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alertbox Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              showAlertDialog(context);
            }, child: Text('Alert dialog'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await showSimpleDialog(context);
                print(result);
              },
              child: Text('Simple dialog'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                showCustomDialog(context);
              },
              child: Text('Custom Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rate Us',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {
                }, child: Text('Submit'),
                ),
              ],
            ),
          ),
        );
      }
  );
}


void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        title: Text('Logout'),
        content:
        Text('Are you sure you want to logout'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {

            },
            child: Text('Logout'),
          ),
        ],
      );
    },
  );
}

showSimpleDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        title: Text('Select color'),
        children: [
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,'Blue');
            },
            child: Text('Green'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,'Green');
            },
            child: Text('Green'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,'Red');
            },
            child: Text('Red'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,'Yellow');
            },
            child: Text('Yellow'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,'Pink');
            },
            child: Text('Pink'),
          ),
        ],
      );
    },
  );
}