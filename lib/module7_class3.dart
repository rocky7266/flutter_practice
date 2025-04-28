import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'form_login.dart';

class FlutterClass2 extends StatelessWidget{
  const FlutterClass2({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
   return Scaffold(
     // backgroundColor: Colors.grey.withAlpha(80),
     appBar: AppBar(
       title: Text('Class-2',
       style: TextStyle(fontSize: 30,
       fontWeight: FontWeight.bold,),),
       centerTitle: true,
       backgroundColor: Colors.cyan,
       foregroundColor: Colors.white,
     ),
     body: SingleChildScrollView(
       child: Center(
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
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                   print('This is outline button');
                 },
                 child: Text('Outline Button'),
             ),
             SizedBox(height: 20),
             GestureDetector(
               onLongPress: (){
                   print('Gesture Pressed');
               },
                 child: Text('This is gesture detector')
             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                 controller: phoneController,
                 keyboardType: TextInputType.phone ,
                 decoration: InputDecoration(
                   labelText: 'Phone Number',
                   labelStyle: TextStyle(color: Colors.red,
                   fontSize: 20),
                   prefixIcon: Icon(Icons.phone),
                   suffixIcon: Icon(Icons.remove_red_eye),
                   hintText: 'Enter your number',
                   border: OutlineInputBorder(),
                 ),
               ),
             ),
             SizedBox(height: 20,),
             ElevatedButton(
                 onPressed: (){
                   if(phoneController.text.isEmpty){
                     print('Field is empty');
                   }else if(phoneController.text.length < 11){
                     print(phoneController.text);
                   }
                   else{
                     print(phoneController.text);
                   }
                 },
                 child: Text('Submit')
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
     ),

     
   );
  }
}