import'package:flutter/material.dart';
import 'package:flutter_practice/widget/cityCard.dart';
class StatefulClass extends StatefulWidget {
  const StatefulClass({super.key});

  @override
  State<StatefulClass> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(),
            style: TextStyle(
              fontSize: 50,
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
                    child:Text('+',
                    style: TextStyle(
                      fontSize: 40,
                    ),)
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                 setState(() {
                   counter--;
                 });
                },
                    child:Text('-',
                      style: TextStyle(
                        fontSize: 40,
                      ),)
                ),
              ],
            ),
            SizedBox(height:50,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cityCard(image: 'https://www.amny.com/wp-content/uploads/2022/08/GettyImages-523538287.jpg?quality=51', city: 'New York City ',),
                  SizedBox(width: 10,),
                  cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYV3EfsaWMn0aXHxhb5FuXZlJWEbIjUPwSyg&s', city: 'Dhaka',),
                  SizedBox(width: 10,),
                  cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReR9Uns1_rIDNosFY9z7YaB9lGyzOpfd8MXQ&s', city: 'maldives',),
                  SizedBox(width: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
