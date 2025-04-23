import 'package:flutter/material.dart';

class FlutterClass2 extends StatelessWidget{
  const FlutterClass2({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // backgroundColor: Colors.grey.withAlpha(80),
     appBar: AppBar(
       title: Text('Class-2'),
       centerTitle: true,
       backgroundColor: Colors.cyan,
       foregroundColor: Colors.white,
     ),
     body: Center(
       child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
              onPressed: (){
            print("Button Press");
          },
              child: Text('Button')
          ),
           SizedBox(
             height: 50,
             // width: double.infinity,
             width: 300,
             child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.lightGreen,
                     foregroundColor: Colors.white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     )
                 ),
                 onPressed: (){
                   print("Button Press");
                 },
                 child: Text('Button')
             ),
           ),
           OutlinedButton(
               onPressed: (){},
               child: Text('Outline Button'),
           ),
           SizedBox(height: 20,),
           GestureDetector(
             onTap: (){
               print('Gesture Pressed');
             },
               child: Text('This is gesture detector')
           ),
           SizedBox(height: 20,),
           Container(
             margin: EdgeInsets.all(20),
             padding: EdgeInsets.all(10),
             width: 200,
             height: 150,
             // color: Colors.lightGreenAccent,
             decoration: BoxDecoration(
               color: Colors.lightGreenAccent,
               borderRadius: BorderRadius.circular(10),
               border: Border.all(
                 width: 2,
                 color: Colors.redAccent,
               ),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,
                   offset: Offset(5, 10),
                   blurRadius: 10,
                 )
               ],
             ),
             child: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("This is container"),
                   Text("This is container"),
                   Text("This is container"),
                   Text("This is container"),
                 ],
               ),
             ),
           ),
         ],
       ),
     ),
     
   );
  }
}