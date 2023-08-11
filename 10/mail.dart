import 'package:flutter/material.dart';

class MailWidget extends StatelessWidget {
  const MailWidget({super.key, required this.title, required this.description, required this.content, required this.time});
  final String title,description,content,time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[ BoxShadow(
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset(2,0),
          ),
          ]
      ),
      child: Expanded(
        flex: 1,
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}
