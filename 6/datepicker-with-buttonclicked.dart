import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date picker with button clicked',
      home: MyDatePage(),
    );
  }
}
class MyDatePage extends StatefulWidget {
  const MyDatePage({super.key});

  @override
  State<MyDatePage> createState() => _MyDatePageState();
}

class _MyDatePageState extends State<MyDatePage> {
  Future _selectDate() async {
    var pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      /*helpText: 'Select date of birth',
      confirmText: 'Done',
      cancelText: 'Cancel',
      fieldLabelText: 'DOB',
      */
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _selectDate();
          },
          child: Text('Open the calender'),
        ),
      ),
    );
  }
}
