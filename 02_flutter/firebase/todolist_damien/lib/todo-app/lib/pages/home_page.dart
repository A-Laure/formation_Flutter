import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/services/firestore.dart';
import 'package:todo_app/theme/light_mode.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final FirestoreService firestore = FirestoreService();

  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'New task',
                          contentPadding: EdgeInsets.all(8)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: lightMode.colorScheme.primary,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      onPressed: () {
                        firestore.addTask(taskController.text);
                        taskController.clear();
                      },
                      color: Colors.white,
                      icon: Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'Tasks',
              style: TextStyle(fontSize: 24),
            ),
            StreamBuilder(
              stream: firestore.getTodoListStream(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List todoList = snapshot.data!.docs;

                  return Container(
                    child: ListView.builder(
                      // creer une liste scrollable 
                      shrinkWrap: true,
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot task = todoList[index];
                        String taskId = task.id;
                        
                        Map<String, dynamic> data = task.data() as Map<String, dynamic>;
                        String taskText = data['task'];
                        bool taskState = data['state'];
                        String taskDate = data['timestamp'].toString();

                        return Card(
                          child: ListTile(
                            leading: Checkbox(
                              value: taskState,
                              onChanged: (value) {
                                firestore.updateTask(taskId, taskText, value!);
                              },
                            ),
                            title: taskState ? Text(taskText, style: TextStyle(decoration: TextDecoration.lineThrough),) : Text(taskText),
                            subtitle: Text(taskDate),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                              ],
                            ),
                          ),
                        );

                      },
                    ),
                  );
                } else {
                  return Text('Aucunes taches...');
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
