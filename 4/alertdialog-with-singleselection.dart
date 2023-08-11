import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert dialog with single selection and show that in a text-field',
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String selectedCity = '';

  final List<String> city = [
    'London',
    'India',
    'USA',
    'Canada',
  ];
  void _showCitySelected() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a city'),
          content: SingleChildScrollView(
            child: ListBody(
              children: city.map((String city) {
                return ListTile(
                  title: Text(city),
                  onTap: () {
                    setState(() {
                      selectedCity = city;
                    });
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert dialog with single selection and show that in a text-field'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              ElevatedButton(
                  onPressed: _showCitySelected,
                  child: Text('Select City'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Selected City: $selectedCity',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
    );
  }
}