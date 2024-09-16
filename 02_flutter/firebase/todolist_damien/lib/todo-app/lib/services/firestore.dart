import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class FirestoreService {

  final CollectionReference todoList = FirebaseFirestore.instance.collection('todolist');

  // CREATE
  Future<void> addTask(String task){
    return todoList.add({
      'task': task,
      'state': false,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

  // READ
  Stream<QuerySnapshot> getTodoListStream(){
    final todoListStream = todoList.orderBy('timestamp', descending: true).snapshots();
    return todoListStream;
  }


  // UPDATE
  Future<void> updateTask(String taskId, String newTask, bool taskState){
    return todoList.doc(taskId).update({
      'task': newTask,
      'state': taskState,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

  // DELETE
  
}