import 'package:flutter/material.dart';
import 'package:flutter_practice/gridview.dart';
class ScreenResponsive extends StatefulWidget {
  const ScreenResponsive({super.key});

  @override
  State<ScreenResponsive> createState() => _ScreenResponsiveState();
}

class _ScreenResponsiveState extends State<ScreenResponsive> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double fontSize = screenSize.width> 600 ? 32 : 18;
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width*0.5,
              height: screenSize.height*0.3,
              color: Colors.red,
            ),
          ),
          Text('This is Media Query Text',
          style: TextStyle(
            fontSize: fontSize
          ),
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List.generate(10, (index){
              return Chip(label: Text('Item $index'));
            })
          ),
          LayoutBuilder(builder: (context,constraints){
            if(constraints.maxWidth >600) {
              return GridView.count(crossAxisCount: 3);
            }
            else
              {
                return GridView.count(crossAxisCount: 2);
              }
          })
        ],
      ),
    );
  }
}
