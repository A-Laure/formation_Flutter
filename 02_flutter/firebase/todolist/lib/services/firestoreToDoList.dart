import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart'; // heure et date internationales

//Nom de la collection : todolist = table

class FireStoreToDoListService {

//on get la collection (table) todolist (ou user dans un autre cas) dans une variable todolist (la 1ère) de la collection todolist(le 2ème)
final CollectionReference todolist = FirebaseFirestore.instance.collection('todolist');

// ENSUITE ON PARAMETRE LE CRUD : CREATE, READ, UPDATE, DELETE

// CREATE : ici, ajout task (ou User) dans la ToDoList

Future<void> addTask(String addTask) {  
  // pour user :  Future<void> addUser(String name, int age) etc...
  return todolist.add({ 
    'task': addTask, // addTask
    'state': false,
    //'timestamp': Timestamp.now(), VERSION NON FORMATEE
    'timestamp': DateFormat('dd/MM/yyyy, HH:mm').format(DateTime.now()),
  });
}

// READ : get qui récupére les task (ou user) de la BDD ToDoList, 
// stream = il écoute en live, tps réel les modifs 
// snapshot = retourne 1 stream chaque fois que le contenu change. Il écoute en tps réel, met à jour le stream
// on mettra un StreamBuilder (widget) ds le body

Stream<QuerySnapshot> getToDoListStream() {
    final toDoListStream = todolist.orderBy('timestamp', descending: true).snapshots();
    return toDoListStream;
  }

  // UPDATE : met a jour un document (table toDoList ici) existant via id (sur une nouvelle saisie de l'utilisateur)
  // "équivalent" de create, create on rempli un champ (task ici) vide, update, on écrase un champ plein

  Future<void> updatetoDoList(String docId, String newTask, bool newState){ // Future<void> updateContact(String docId, String newName, int newAge){
    return todolist.doc(docId).update({
        'task': newTask,                    
        'state': newState,
        'timestamp': DateFormat('dd/MM/yyyy, HH:mm').format(DateTime.now()),
    });
  }


  // DELETE : supprime la tâche dans toDoList ciblée via id

  Future<void> deleteToDoList(String docId){
    return todolist.doc(docId).delete();
  }


}






