import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/services/userstore.dart';

class TodostoreService extends UserstoreService {

  final CollectionReference todoList = FirebaseFirestore.instance.collection('todolist');

  

  // CREATE
  Future<void> addTask(String uid, String task){

    // return todoList.add({
    //   'task': task,
    //   'state': false,
    //   'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    // });


    final userStore = users.doc(uid).collection(todoList.path);

    return userStore.add({
      'task': task,
      'state': false,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

  // READ
  Stream<QuerySnapshot> getTodoListByUser(uid){
    final userStore = users.doc(uid).collection(todoList.path);
    final todoListStream = userStore.orderBy('timestamp', descending: true).snapshots();
    return todoListStream;
  }


  // UPDATE
  Future<void> updateTask(String uid, taskId, String newTask, bool taskState){
    final userStore = users.doc(uid).collection(todoList.path);
    return userStore.doc(taskId).update({
      'task': newTask,
      'state': taskState,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

  // DELETE
  Future<void> deleteTask(String uid, String taskId){
    final userStore = users.doc(uid).collection(todoList.path);
    return userStore.doc(taskId).delete();
  }
}