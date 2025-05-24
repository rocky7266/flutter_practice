import 'package:flutter/material.dart';
class buildButton extends StatelessWidget {
  String text;
  Color ?color;
  final VoidCallback onClick;
   buildButton({
    super.key,
    required this.text,
    this.color,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:color ?? Colors.grey[800],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(20),
        ),
        onPressed: onClick, child:
      Text(text,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
      ),
    );
  }
}