
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter batch 10',
      home: Home(),

    );

}

  }
class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              child: Icon(Icons.add,
                size: 50,
                color: Colors.red,
              ),
              onTap: (){
                print("InkWell Test");
              },
            ),
            IconButton(onPressed: (){
              print("Test button warning");
            }, icon: Icon(Icons.warning,
            size: 50,
            ),
            ),
            TextButton(onPressed: (){
              print("Text button");
            }, child: Text("Click Me",
            style: TextStyle(fontSize: 50),),),
            Text("This is body text",
            style: TextStyle(fontSize: 50,
            color: Colors.blue),
            ),
            Text("This is body text",
              style: TextStyle(fontSize: 50,
                  color: Colors.blue),
            ),
            SizedBox(height: 10,),
            Text("This is body text",
              style: TextStyle(fontSize: 50,
                  color: Colors.blue),
            ),
            SizedBox(height: 10,),
            Text("This is body text",
              style: TextStyle(fontSize: 50,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}