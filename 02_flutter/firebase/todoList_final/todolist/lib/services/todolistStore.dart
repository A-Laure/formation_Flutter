import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart'; // heure et date internationales

//Nom de la collection : todolist = table

class FirestoreToDoListService {

///on get ou crée (si rien avant) la collection (table) todolist (ou user dans un autre cas) dans une variable todolist (la 1ère) de la collection todolist(le 2ème)
  final CollectionReference todoList = FirebaseFirestore.instance.collection('todolist');

// ENSUITE ON PARAMETRE LE CRUD : CREATE, READ, UPDATE, DELETE

// CREATE : ici, ajout task (ou User) dans la ToDoList
  Future<void> addTask(String task){
    return todoList.add({
      'task': task,
      'state': false,
      //'timestamp': Timestamp.now(), VERSION NON FORMATEE
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

// READ : get qui récupére les task (ou user) de la BDD ToDoList, 
// stream = il écoute en live, tps réel les modifs 
// snapshot = retourne 1 stream chaque fois que le contenu change. Il écoute en tps réel, met à jour le stream
// on mettra un StreamBuilder (widget) ds le body
  Stream<QuerySnapshot> getTodoListStream(){
    final todoListStream = todoList.orderBy('timestamp', descending: true).snapshots();
    return todoListStream;
  }

// UPDATE : met a jour un document (table toDoList ici) existant via id (sur une nouvelle saisie de l'utilisateur)
// "équivalent" de create, create on rempli un champ (task ici) vide, update, on écrase un champ plein

  Future<void> updateTask(String taskId, String newTask, bool taskState){
    return todoList.doc(taskId).update({
      'task': newTask,
      'state': taskState,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

// DELETE : supprime la tâche dans toDoList ciblée via id
  Future<void> deleteTask(String taskId){
    return todoList.doc(taskId).delete();
  }
}