import 'package:flutter/material.dart';
class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  void showAlertDialog(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('This is title'),
      content: Text('Are you sure?'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('OK')),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancel')),
      ],
    ));
  }
  void showSimpleDialog(){
    showDialog(context: context, builder: (context)=>SimpleDialog(
      title: Text('This is title'),
      children: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('OK')),
        TextButton(onPressed: (){
          Navigator.pop(context);
        },
    child: Text('Cancel')),
    ]
    )
    );
  }
  void showBottomSheetAlert(){
    showModalBottomSheet(context: context, builder: (context)=>Container(
      height: 200,
      width: double.infinity,
      color: Colors.amber,
      child: Text('Bottom Sheet',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      )
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child: Text('Alert Dialog')
            ),
            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child: Text('Simple Dialog')
            ),
            ElevatedButton(onPressed: (){
              showBottomSheetAlert();
            }, child: Text('Bottom Sheet')
            ),
          ],
        ),
      ),
    );
  }
}
