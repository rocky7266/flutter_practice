import 'package:flutter/material.dart';
class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        centerTitle: true,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10),
          itemCount: 20,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone,
                color: Colors.white,)
              ],
            ),
          ),
        );
          }
      )

    );
  }
}