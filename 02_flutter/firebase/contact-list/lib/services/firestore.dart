import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class FirestoreService {

  // get la collection des contacts
  final CollectionReference contacts = FirebaseFirestore.instance.collection('contacts'); 

  // CRUD = CREATE READ UPDATE DELETE

  // CREATE : ajouter un contact
  Future<void> addContact(String name, int age){
    return contacts.add({
      'name': name,
      'age': age,
      'timestamp': Timestamp.now(),
      // 'timestamp': DateFormat('dd/MM/yyyy, HH:mm').format(DateTime.now()),
    });
  }


  // READ : get récupérer les contacts de la BDD
  Stream<QuerySnapshot> getContactsStream() {
    final contactsStream = contacts.orderBy('timestamp', descending: true).snapshots();
    return contactsStream;
  }


  // UPDATE : met a jour un document existant 
  Future<void> updateContact(String docId, String newName, int newAge){
    return contacts.doc(docId).update({
        'name': newName,
        'age': newAge,
        'timestamp': Timestamp.now(),
    });
  }

  // DELETE : supprime le contact ciblé
  Future<void> deleteContact(String docId){
    return contacts.doc(docId).delete();
  }

}