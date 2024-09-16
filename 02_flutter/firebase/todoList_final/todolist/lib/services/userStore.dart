import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

//Nom de la collection : user = table

class FirestoreUserService {

//on get ou crée (si rien avant) la collection (table) user dans une variable user (la 1ère) de la collection user (le 2ème)
  final CollectionReference user = FirebaseFirestore.instance.collection('user');

 // ENSUITE ON PARAMETRE LE CRUD : CREATE, READ, UPDATE, DELETE

// CREATE : ici, ajout User dans la collection User

  Future<void> addUser(String uid,String addUserName, String addUserNickName, String addbirthdate){ // ordre pas important

  /* Méthose où on crée un champ id dans le user
      
   return user.add({
      //'userId' : uid,  
      'name': addUserName,
      'nickname': addUserNickName,
      'birthday' : addbirthdate,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
  */

// NOUS on va utiliser l'ID du doc de l'user

    return user.doc(uid).set({ //set 
      //'userId' : uid,  NOUS on va utiliser l'ID du doc de l'user
      'name': addUserName,
      'nickname': addUserNickName,
      'birthday' : addbirthdate,
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())

    });
  }

// READ : get qui récupére le user de la BDD User, 
// stream = il écoute en live, tps réel les modifs 
// snapshot = retourne 1 stream chaque fois que le contenu change. Il écoute en tps réel, met à jour le stream
// on mettra un StreamBuilder (widget) ds le body

  Stream<QuerySnapshot> getUserStream(){
    final userStream = user.orderBy('timestamp', descending: true).snapshots();
    return userStream;
  }


  // UPDATE : met a jour un document (table User ici) existant via id (sur une nouvelle saisie de l'utilisateur)
  // "équivalent" de create, create on rempli un champ (task ici) vide, update, on écrase un champ plein

  Future<void> updateUser(String editUid, String editName, String editNickname, editBirthdate){
    return user.doc(editUid).update({
      'userId': editUid,
      'name': editName,
      'nickname': editNickname,
      'birthday' : editBirthdate,   
      'timestamp': DateFormat('dd/MM/yyyy').format(DateTime.now())
    });
  }

 // DELETE : supprime la tâche dans toDoList ciblée via id

  Future<void> deleteUser(String userDocId){  // NOUS on va utiliser l'ID du doc de l'user
    return user.doc(userDocId).delete();
  }
}