import 'package:flutter/material.dart';
import 'package:module3/10/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<User> list=[
  User("Domino's Pizza India",
  "Let your taste buds hit the jackpot",
  "if you're like to unsubscribe and stop receiving these emails",
  "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),
    User("Career Camp" ,
        "Ace your tech interviews in 2023",
        "Hi kinjal,If you've recently embarked on your career or if you're already a working professional, having a well-defined career plan becomes extremely crucial. To do this, you should take a look at the skills you currently haveEvaluate your woor projects you've doneStay updated on what's happening in the industry",
        "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),
    User("Domino's Pizza India",
        "Let your taste buds hit the jackpot",
        "if you're like to unsubscribe and stop receiving these emails",
        "12:20 pm"),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail UI design',
      home: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.mail),
                title: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                ),
                onTap: (){},
              ),
              Divider(
                height: 2,
                thickness: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text(
                  'Primary',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text(
                  'Social',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.sell),
                title: Text(
                  'Promotions',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              Divider(
                height: 2,
                thickness: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: Text(
                  'Starred',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text(
                  'Snoozed',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.label_important_outline),
                title: Text(
                  'Important',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text(
                  'Sent',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.schedule_send),
                title: Text(
                  'Scheduled',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text(
                  'Drafts',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text(
                  'All emails',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.report_gmailerrorred_sharp),
                title: Text(
                  'Spam',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.delete_outline),
                title: Text(
                  'Bin',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              Divider(
                height: 2,
                thickness: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text(
                  'Create new',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              Divider(
                height: 2,
                thickness: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text(
                  'Send feedback',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.help_outline_rounded),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                onTap: (){},
              ),
            ],
          ),
        ),
        bottomNavigationBar:BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                label: 'Mail',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_indoor_rounded),
                label: 'Meet',
              ),
            ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black26,
                      offset: Offset(2,0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        scaffoldKey.currentState?.openDrawer();
                      },
                        icon: Icon(Icons.menu),
                      ),
                    Expanded(
                      flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search here',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                    ),
                   /* CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image.asset('assets/images/4.jpeg'),
                      ),
                    ),*/
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(25), // Image radius
                        child: Image.asset('assets/images/4.jpeg', fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Primary',
                    textAlign: TextAlign.left,
                  ),
                ),
                ),
              Expanded(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context,int index){
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "${list[index].profilePhoto}$index.jpg"
                            ),
                          ),
                          title: Text(list[index].title,
                              style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          subtitle: Text('${list[index].description}\n${list[index].content}'),
                          trailing: Text(list[index].time),
                          isThreeLine: true,
                        );
                      }
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}