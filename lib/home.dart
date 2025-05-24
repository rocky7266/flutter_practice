import 'package:flutter/material.dart';
import 'package:flutter_practice/gridview.dart';
import 'package:flutter_practice/life_cycle.dart';
import 'package:flutter_practice/screenSize.dart';
import 'package:flutter_practice/statefull_class.dart';
import 'package:flutter_practice/todo.dart';

import 'alert.dart';
import 'calculator_app.dart';
import 'drawer_tab.dart';
import 'listview.dart';
import 'mediaQuery.dart';
import 'module7_class2.dart';

class Home extends StatefulWidget {
  final String name;
  const Home({super.key, required this.name});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void dispose() {
    // TODO: implement dispose
    print('Dispose from home');
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    print('Init Home');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Log in Successful'),
            SizedBox(height: 20),
            Text(widget.name),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Text('HomePage'),
                ),
                // ElevatedButton(onPressed: (){
                //   Navigator.pop(context);
                // },
                //     child:
                // Text('Back')
                // )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListV()),
                );
              },
              child: Text('ListView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GridV()),
                );
              },
              child: Text('GridView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatefulClass()),
                );
              },
              child: Text('StateFull'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TodoApp()),
                );
              },
              child: Text('ToDo'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenResponsive(),
                  ),
                );
              },
              child: Text('Responsive'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AspScreen()),
                );
              },
              child: Text('Aspect Ratio'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DrawerTab()),
                );
              },
              child: Text('Drawer & Tab Bar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LifeCycle()),
                );
              },
              child: Text('Life Cycle'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Alert()),
                );
              },
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CalculatorApp()),
                );
              },
              child: Text('Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}
