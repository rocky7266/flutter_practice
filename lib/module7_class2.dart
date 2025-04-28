import 'package:flutter/material.dart';

import 'module7_class3.dart';
class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',
        style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold,)),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                // label: Text("Warning",),
              ),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlutterClass2()),
                );
                print("Text button");
              }, child: Text("Click Me",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.greenAccent,
                ),
              ),
              ),
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
      ),
    );
  }
}