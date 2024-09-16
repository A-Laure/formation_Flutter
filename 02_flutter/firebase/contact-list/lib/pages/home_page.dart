import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contact_list/services/firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // on instanci la class FirestoreService (qui se trouve dans le fichier firestore.dart dans le dossier services)
  final FirestoreService firestore = FirestoreService();

  // la ou on stocke la donnée saisie dasn le champ par l'utilisateur
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  // Fonction qui ouvre la boite dialog qui affiche le formaulaire d'ajout
  void openContactForm({String? docId}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                // placeholder qui s'efface a la saisie contrairement au label
                hintText: 'Votre nom',
              ),
            ),
            TextField(
              controller: ageController,
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              if (docId == null) {
                // ajouter un nouveau contact
                firestore.addContact(
                    nameController.text, int.parse(ageController.text));
              } else {
                // Modifie le contact ciblé
                firestore.updateContact(
                    docId, nameController.text, int.parse(ageController.text));
              }

              // clear le text du controller
              nameController.clear();
              ageController.clear();

              // ferme la boite de dialog
              Navigator.pop(context);
            },
            child: docId == null
                ? Text('Ajouter le contact')
                : Text('Modifier le contact'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.getContactsStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List contactsList = snapshot.data!.docs;

            return Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: contactsList.length,
                  itemBuilder: (context, index) {
                    // on recupere chaque document a chaque tour
                    DocumentSnapshot document = contactsList[index];
                    // on recupere l'id du document que nous sommes entrain de parcourrir
                    String docId = document.id;

                    // recupere le nom du contact
                    Map<String, dynamic> data =
                        document.data() as Map<String, dynamic>;
                    String contactName = data['name'];
                    String contactAge = data['age'].toString();
                    // On convertit le timestamp en DateTime pour avoir un format plus adapté
                    DateTime date = (data['timestamp'] as Timestamp).toDate();
                    String contactTime =
                        DateFormat('dd/MM/yyyy, HH:mm').format(date).toString();
                    // si on a deja fait dans le firestore
                    // String contactTime = data['timestamp'].toString();

                    return Card(
                      child: ListTile(
                        title: contactAge == null
                            ? Text(contactName)
                            : Text('${contactName}, ${contactAge}'),
                        subtitle: Text(contactTime),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // update button
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () => openContactForm(docId: docId),
                            ),
                            // delete button
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => firestore.deleteContact(docId),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ));
          } else {
            return Text('Aucun contacts ....');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openContactForm,
        child: Icon(Icons.add),
      ),
    );
  }
}
