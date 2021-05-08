import 'package:flutter/material.dart';
import 'package:task_four/newsmodel/news.dart';

import 'contacts.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int navigationBarIndex=0;

  @override
  Widget build(BuildContext context) {

    List<Widget> bodyWidget = [
      Center(
        child: ListView.builder(
            itemCount: News.homeNews.length,
            itemBuilder: (context,i)=>mailContainer(index: i,)
        ),
      ),
      Center(
        // child: Text('Hello Contacts',style: TextStyle(fontSize: 30.0),),
        child: ListView.builder(
          itemCount: Contacts.contacts.length,
          itemBuilder: (context,i)=>contactContainer(index: i,),

        ),
      ),
      Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,i)=>profileContainer(index: i,),
        ),

      )
    ];
    return SafeArea(
        child: Scaffold(
          body: bodyWidget[navigationBarIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.lightBlue,
            currentIndex: navigationBarIndex,
            iconSize: 30.0,
            onTap: (index){
              setState(() {
                navigationBarIndex = index;
              });
            },
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(

                icon: Icon(Icons.mail),
                label: 'Mails',

              ),
              BottomNavigationBarItem(

                icon: Icon(Icons.contact_mail),
                label: 'Contacts',

              ),
              BottomNavigationBarItem(

                icon: Icon(Icons.person_pin_circle_rounded),
                label: 'Profile',

              ),
            ],
          ),
          appBar: AppBar(
          title: Text('Times News'),
          backgroundColor: Colors.lightBlue, leading: Icon(Icons.menu_book),
         ),
          drawer: Drawer(
            child: ListView(
                children: <Widget>[
                  DrawerHeader(child: Image(image: NetworkImage(''),)),
                  Text('Favourite', style: TextStyle(fontSize: 20.0),)
                ],

            ),
          ),
        ),
    );
  }
}


class contactContainer extends StatelessWidget{
  final int index;
  contactContainer({this.index,});
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(Contacts.contacts[index],style: TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
class profileContainer extends StatelessWidget{
  final int index;
  profileContainer({
    this.index,
});
  @override
  Widget build(BuildContext context){
    return Container(
    //     margin: EdgeInsets.all(5.0),
    // height: 100.0,
    // width: double.infinity,
    // decoration: BoxDecoration(
    // color: Colors.pink[100],
    // borderRadius: BorderRadius.circular(500.0),
    //   ),
      child: Column(
        children: [
           Image(image: NetworkImage('https://static.thenounproject.com/png/630740-200.png'),),
          Text('Name',style: TextStyle(fontSize: 30.0),),
          Text('USER@GMAIL.COM',style: TextStyle(fontSize: 15.0),),
          Text('Phone Number: 0166666666666',style: TextStyle(fontSize: 15.0)),

        ],
      ),

    );
  }
}
class mailContainer extends StatelessWidget {
  final int index;
   mailContainer({
      this.index,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 100.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(News.homeNews[index],style: TextStyle(fontSize: 25.0),),
            ),

    );

  }
}
