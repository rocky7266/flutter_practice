import 'package:flutter/material.dart';
import 'package:flutter_practice/widget/Custom%20Button.dart';
class CalculatorApp extends StatefulWidget {
   CalculatorApp({super.key});



  @override
  State<CalculatorApp> createState() => _CalculatorAppState();

}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0';
  String _oprt = '0';
  double num1 = 0.0;
  double num2 = 0.0;
  void buttonPressed(String value){
    print(value);
    setState(() {
      if(value == 'C'){
        _output = '0';
        _oprt = '';
        num1 = 0.0;
        num2 = 0.0;
      }
      else if(value == '+' || value == '-' || value == 'x' || value == '÷'){
        num1 = double.parse(_output);
        _oprt = value;
        _output = '0';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text('564',
                style: TextStyle(
                    fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
                  ),
            ),
            Row(
              children: [
                Expanded(child: buildButton(onClick: (){},text: '7',)),
                Expanded(child: buildButton(onClick: (){},text: '8',)),
                Expanded(child: buildButton(onClick: (){},text: '9',)),
                Expanded(child: buildButton(onClick: (){},text: '÷',)),

              ]
            ),
            Row(
                children: [
                  Expanded(child: buildButton(onClick: (){},text: '7',)),
                  Expanded(child: buildButton(onClick: (){},text: '8',)),
                  Expanded(child: buildButton(onClick: (){},text: '9',)),
                  Expanded(child: buildButton(onClick: (){},text: '÷',)),

                ]
            ),
            Row(
                children: [
                  Expanded(child: buildButton(onClick: (){},text: '7',)),
                  Expanded(child: buildButton(onClick: (){},text: '8',)),
                  Expanded(child: buildButton(onClick: (){},text: '9',)),
                  Expanded(child: buildButton(onClick: (){},text: '÷',)),

                ]
            ),
            Row(
                children: [
                  Expanded(child: buildButton(onClick: (){},text: '7',)),
                  Expanded(child: buildButton(onClick: (){},text: '8',)),
                  Expanded(child: buildButton(onClick: (){},text: '9',)),
                  Expanded(child: buildButton(onClick: (){},text: '÷',)),

                ]
            ),
          ],
        ),
      ),
    );

  }
}


