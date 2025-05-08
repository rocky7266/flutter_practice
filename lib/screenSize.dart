import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AspScreen extends StatefulWidget {
  const AspScreen({super.key});

  @override
  State<AspScreen> createState() => _AspScreenState();
}

class _AspScreenState extends State<AspScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FractionallySizedBox(
              widthFactor: 0.5,
              // heightFactor: 0.5,
              child: ElevatedButton(onPressed: (){},
                  child: Text('Submit'),
              )
            ),
            Container(
              height: 300.h,
              width: 300.w,
              color: Colors.amberAccent,
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                child:Container(
                  color: Colors.blue,
                child: Center(child: Text('This is a text')),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    // width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    // width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    // width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              color: Colors.cyan,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              color: Colors.yellow,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){},
                      child: Text('Person 1')
                  ),
                ),
                Expanded(
                  child: ElevatedButton(onPressed: (){},
                      child: Text('Person 2')
                  ),
                ),
                Expanded(
                  child: ElevatedButton(onPressed: (){},
                      child: Text('Person 3')
                  ),
                )
              ]

            ),
            SizedBox(height: 10,),
            AspectRatio(
                aspectRatio: 16/9,
              child: Container(
                color: Colors.orange,
              ),
            ),
            AspectRatio(
              aspectRatio: 4/3,
              child: Container(
                color: Colors.blue,
              ),
            ),
            AspectRatio(
              aspectRatio: 9/16,
              child: Container(
                color: Colors.green,
              ),
            ),
            AspectRatio(
              aspectRatio: 16/10,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
