import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Appbar with Search',
      home: MyAppbar(),
    );
  }
}
class MyAppbar extends StatefulWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search bar in AppBar'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: MySearchDelegate(),
                );
              },
              icon: Icon(Icons.search),
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
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
        onPressed: () {
          if(query.isEmpty) {
            close(context, null);
          }
          else {
            query = '';
          }
        },
        icon: Icon(Icons.clear),
    ),
    ];

  @override
  Widget buildResults(BuildContext context)  => Center(
    child: Text(
      query,
      style: TextStyle(fontSize: 64,fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> searchResults = [
      'India',
      'Paris',
      'Canada',
      'London',
      'USA',
      'Spain',
    ];
    List<String> suggestions = searchResults.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
   return ListView.builder(
     itemCount: suggestions.length,
       itemBuilder: (context,index) {
         final suggestion = suggestions[index];

         return ListTile(
           title: Text(suggestion),
           onTap: () {
             query = suggestion;
             showResults(context);
           },
         );
       },
   );
  }
}
