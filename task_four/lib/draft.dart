// bottomNavigationBar: BottomNavigationBar(
// backgroundColor: Colors.lightBlue,
// //icon: Icon(Icon.add),
// iconSize: 30.0,
// // onTap: ,
// selectedItemColor: Colors.white,
// currentIndex: 0,
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.description),
// label:'News',
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.add),
// label: 'Add news',
// ),
// ],
//
//
// ),
// appBar: AppBar(
// title: Text('Times News'),
//
// ),
// body: Center(
// child: ListView.builder(
// itemCount: News.homeNews.length,
// itemBuilder: (context,i)=> ContainerNews(index: i,)
// ),
// ),
// drawer: Drawer(
// child: ListView(
// children: <Widget>[
// DrawerHeader(
// child: Center(child: Text('Months',style: TextStyle(fontSize:50.0,color: Colors.white ),)),
// decoration: BoxDecoration(color: Colors.blue),
// ),
//
// ListTile(
// title: Center(child: Text('January 1',style: TextStyle(fontSize: 30.0),)),
// // onTap: (){
// //   Navigator.pop(context),
//
// // },
// ),
// ListTile(
// title: Center(child: Text('February 2',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('March 3',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('April 4',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('May 5',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('June 6',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('July 7',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('September 8',style: TextStyle(fontSize: 30.0),)),
// ),
// ListTile(
// title: Center(child: Text('October 10',style: TextStyle(fontSize: 30.0),)),
// ),ListTile(
// title: Center(child: Text('November 11',style: TextStyle(fontSize: 30.0),)),
// ),ListTile(
// title: Center(child: Text('December 12',style: TextStyle(fontSize: 30.0),)),
// ),
// ],
// ),
//
//
//
// ),
//
// class ContainerNews extends StatelessWidget {
//
//   final int index;
//   ContainerNews({
//     this.index,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50.0,
//       width: double.infinity,
//       color: Colors.lightBlue,
//       margin: const EdgeInsets.all(5.0),
//       // decoration: BoxDecoration(
//       //   color: Colors.lightBlue,
//       //   borderRadius: BorderRadius.circular(10.0),
//       // ),
//       child: Center(
//         child: Text(
//           News.homeNews[index] ,
//           style: TextStyle(fontSize: 16.0),
//         ),
//       ),
//
//     );
//   }
// }
//
//
