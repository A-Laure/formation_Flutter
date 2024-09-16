import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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

  void openTaskBox(String taskId, bool taskState) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: taskController,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              firestore.updateTask(taskId, taskController.text, taskState);
              taskController.clear();
              Navigator.pop(context);
            },
            child: Text('Mofifier la tache'),
          )
        ],
      ),
    );
  }

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

                        Map<String, dynamic> data =
                            task.data() as Map<String, dynamic>;
                        String taskText = data['task'];
                        bool taskState = data['state'];
                        String taskDate = data['timestamp'].toString();

                        return Slidable(
                          key: Key(taskId),
                          endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                              
                                onPressed: (context) {
                                  openTaskBox(taskId, taskState);
                                },
                                backgroundColor: Color(0xFF7BC043),
                                foregroundColor: Colors.white,
                                icon: Icons.edit,
                                label: 'Edit',
                              ),
                              SlidableAction(
                                onPressed: (context) =>
                                    firestore.deleteTask(taskId),
                                backgroundColor: Color(0xFF0392CF),
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Delete',
                              ),
                            ],
                          ),
                          child: Card(
                            child: ListTile(
                              leading: Checkbox(
                                value: taskState,
                                onChanged: (value) {
                                  firestore.updateTask(
                                      taskId, taskText, value!);
                                },
                              ),
                              title: taskState
                                  ? Text(
                                      taskText,
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough),
                                    )
                                  : Text(taskText),
                              subtitle: Text(taskDate),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        openTaskBox(taskId, taskState);
                                      },
                                      icon: Icon(Icons.edit)),
                                  IconButton(
                                      onPressed: () =>
                                          firestore.deleteTask(taskId),
                                      icon: Icon(Icons.delete)),
                                ],
                              ),
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
