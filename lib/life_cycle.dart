import 'package:flutter/material.dart';
class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('From initState');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Dispose called');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didchange dependency');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life Cycle'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
