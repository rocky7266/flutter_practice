import 'package:flutter/material.dart';

class ListV extends StatelessWidget {
  const ListV({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     title: Text('List View'),
       centerTitle: true,
     ),
     body: ListView.builder(
       itemCount: 50,
       itemBuilder: (context, index) {
         // return Text('Item $index',
         // style: TextStyle(fontSize: 20,
         // fontWeight: FontWeight.bold,),
         return Card(
           child: ListTile(
             onTap: () {
               print('Press $index');
             },
             leading: Icon(Icons.phone),
             trailing: Icon(Icons.delete),
             title: Text('Rocky'),
             subtitle: Text("0178882835$index"),
           ),
         );
       },
     ),
   );
  }
}