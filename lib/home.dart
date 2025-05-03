import 'package:flutter/material.dart';
import 'package:flutter_practice/gridview.dart';
import 'package:flutter_practice/statefull_class.dart';

import 'listview.dart';
import 'module7_class2.dart';

class Home extends StatelessWidget{
  final String name;
  const Home ({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Log in Successful'),
            SizedBox(
              height: 20,
            ),
            Text(name),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                    child:
                Text('HomePage')),
                // ElevatedButton(onPressed: (){
                //   Navigator.pop(context);
                // },
                //     child:
                // Text('Back')
                // )
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ListV()));
            },
                child:
            Text('ListView')
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GridV()));
            },
                child:
            Text('GridView')
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> StatefulClass()));
            },
                child: Text('StateFull'))
          ],
        ),

      ),
    );
  }
}