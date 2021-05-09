import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/must_do.dart';

import 'add.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink[100],
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ADD(),
              ),
            );
          },
        ),
        backgroundColor: Colors.black,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Image(
                  image: NetworkImage(
                      'https://static.thenounproject.com/png/630740-200.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text(
                  'UserName\nUser@gmail.com',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text(
                  'Favourite',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text(
                  'Done',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.check_box_outline_blank),
                title: Text(
                  'UnDone',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.contact_support_outlined),
                title: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Log out',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: Text(
            'To Do List',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.list),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: MustDo.stuff.length,
            itemBuilder: (context, i) => DoContainer(
              index: i,
            ),
          ),
        ),
      ),
    );
  }
}

class DoContainer extends StatelessWidget {
  final int index;
  static bool unchecked = false;
  static bool checked = true;

  const DoContainer({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(top: 5.0, left: 5.0),
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: () {
          if (unchecked == true) {
            unchecked = false;
            checked = true;
          } else {
            unchecked = true;
            checked = false;
          }
        },
        leading: Visibility(
          child: Icon(Icons.check_box_outline_blank),
          visible: false,
          replacement: Visibility(
            child: Icon(Icons.check_box),
            visible: true,
          ),
        ), //Icon(Icons.check_box_outline_blank),

        title: Text(
          MustDo.stuff[index],
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
