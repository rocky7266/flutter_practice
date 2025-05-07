import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  void _addTask(){
    if(taskController.text.isNotEmpty){
      setState(() {
        _tasks.add({
          'text': taskController.text,
          'isDone': false,
        });
        taskController.clear();
      });
    }
  }
  void _deleteTask(int index){
    setState(() {
      _tasks.removeAt(index);
    });
  }
  TextEditingController taskController = TextEditingController();
  List<Map<String, dynamic>> _tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('ToDo App',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    labelText: 'Enter Task',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    ),

                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: _addTask,
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      backgroundColor: Colors.cyan,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    child: Text('Add',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    )
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
              itemBuilder: (context,index){
                  return Card(
                    elevation: 1,
                    borderOnForeground: true,
                    child: ListTile(
                      leading: Checkbox(
                        value: _tasks[index]['isDone'],
                        onChanged: (value) {
                          setState(() {
                            _tasks[index]['isDone'] = value!;
                          });
                        },
                      ),
                      title: Center(
                        child: Text(
                          _tasks[index]['text'],
                          style: TextStyle(
                            decoration: _tasks[index]['isDone']
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                      trailing: IconButton(onPressed: ()=> _deleteTask(index),
                          icon: Icon(Icons.delete,
                color: Colors.red),)
                    ),
                  );
              }),
            )
          ],
        ),
      ),
    );
  }
}
