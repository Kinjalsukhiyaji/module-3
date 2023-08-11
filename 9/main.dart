import 'dart:math';
import 'package:flutter/material.dart';
import 'package:module3/9/model/person.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic list crud operation',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var personlist = <Person>[];
  void addUser(Person person) {
    setState(() {
      personlist.add(person);
    });
  }

  void updateUser(Person person) {
    var index = personlist.indexWhere((element) => element.id == person.id);
    setState(() {
      personlist[index] = person;
    });
  }

  void removeUser(Person person) {
    setState(() {
      personlist.removeWhere((element) => element.id == person.id);
    });
    // Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic list crud operation'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        //add user
        {
          showBottomSheetDialog(context);
        },

      ),
      body: ListView.builder(
        itemCount: personlist.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: () {
              Person person = personlist[index];
              showBottomSheetDialog(context,person);
            },
            title: Text(personlist[index].name),
            subtitle: Text(personlist[index].email),
            leading: Icon(Icons.account_circle,size: 30,),
            trailing: PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 'remove':
                    removeUser(personlist[index]);
                    break;
                  case 'cancel':
                    break;
                  default:
                    Navigator.pop(context);
                }
              }, itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'remove',
                  child: Text('Remove'),
                ),
                PopupMenuItem(
                  value: 'cancel',
                  child: Text('Cancel'),
                ),
              ];
            },
            ),
          );
        },
      ),
    );
  }

  void showBottomSheetDialog(BuildContext context, [Person? person]) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    if (person != null) {
      _nameController.text = person.name;
      _emailController.text = person.email;
    }
    showModalBottomSheet(
        context: context,
        builder : (context)
        {
          return Container(
            padding: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 24,
                bottom: MediaQuery.of(context).viewInsets.bottom
            ),
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Enter the name'),
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Enter the email'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      String name = _nameController.text.trim();
                      String email = _emailController.text.trim();
                      int? id = person != null ? person.id : Random().nextInt(999);

                      print('id : $id,name : $name,email : $email');

                      var mUser = Person(id: id, name: name, email: email);

                      if(person != null) {
                        updateUser(mUser);
                      }
                      else {
                        addUser(mUser);
                      }
                      Navigator.pop(context);
                    }, child: Text(person != null ? 'Update User' : 'Add User'),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
