/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/services/firestoreToDoList.dart';

class HomePage extends StatefulWidget {

const HomePage({super.key});

@override 
State<HomePage> createState() => _HomePageState();

}

class _HomePageState  extends State<HomePage> {

  // on instancie la class FirestoreToDoList service (qui se trouve ds le fichier firestoreToDoList.dart dans le dossier services)
  final FireStoreToDoListService firestore = FireStoreToDoListService();

  // là on où va stocker la donnée saisie dans le champ task par l'utilisateur
  final TextEditingController taskController = TextEditingController();
  //final TextEditingController stateController = TextEditingController(); 
  //final TextEditingController dateController = TextEditingController(); 
  
  get stateController => null;
  


  // fonction qui va ouvrir la boite de dialogue pour formulaire d'ajout via id
  void openToDolistForm({String? docId, bool? taskState, String? taskDsc}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog( // AlertDialog : permet d'afficher une fenêtre pour diffuser un message ou proposer une saisie à l'utilisateur
            content: Column(
                children: [

                // 1 textfield par champ  "CRUD"    
                    
                    // 1er textfield ou le seul
                    TextField(
                        controller: taskController, // fait appel au contrôleur de la tâche
                        decoration: InputDecoration(
                            hintText: 'New Task', // = un placeHolder : "à la place de"
                        )
                    ),
                     
                    /* 2ème textfield etc....
                    TextField(
                        controller : stateController,
                    ),

                     2ème textfield etc....
                    TextField(
                        controller : dateController,
                    ),*/
                    
                ],
            ),
            actions: [  
                ElevatedButton(
                    onPressed: () {
                        // Ajout d'une nouvelle task, si champ vide...
                        if (docId == null) {
                            firestore.addTask(  //firestore.addToDoList( 
                                taskController.text, // int.parse(agecontroller.text)
                            );
                        }   else { // si champ n'était pas vide, c'est une modif, UPDATE
                            firestore.updatetoDoList(docId, taskController.text, stateController.text);  //!!! STATE A RAJTER
                            
                        // clear du text du controller (ancienne saisie)
                                taskController.clear();
                                //ageController.clear();

                        // fermeture de la boite de dialogue
                        Navigator.pop(context);
                        }
                    },
                    child: docId == null ? Text('Ajouter une tâche') : Text('Modifier la tâche'),
                ),
            ], // liste d'actions
        ),
    ); // showDialog
} // openToDolistForm

     // "création de la page"

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDoList'),
      ),
      body: StreamBuilder<QuerySnapshot>( // en lien aavec le READ de fireStoreToDoList.dart
        stream: firestore.getToDoListStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) { // si snapshot a des datas tu crées une liste taskList
            List todoList = snapshot.data!.docs; // on déclare la liste

            // et tu retournes
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                    shrinkWrap: true, // on autorise, crée un élément scrollable, "permet d'envelopper des équipements entiers, quelle que soit leur taille"
                    itemCount: todoList.length, // pour toute la liste tasksList
                    itemBuilder: (context, index) { // tu "construis"
                    // il récupère chaque document à chaque tour
                    DocumentSnapshot document = todoList[index]; // on peut mettre tasks au lieu document
                    // il récupère l'ID du document que nous sommes en train de parcourir et récupère ds une variable son id
                    String docId = document.id; // ou taskId et task.id

                    // ici, récupère la tâche que l'on met ds une map
                    Map<String, dynamic> data = 
                        document.data() as Map<String, dynamic>;
                        String taskDsc = data['task'];
                        bool taskState = data['state'];
                        String taskDate = data['timestamp'].toString();
                        

                    /* on convertie le timeStamp en DateTime pour avoir un format plus adapté si pas fait dans le firestoreToDoList.dart
                        DateTime date = (data['timestamp'] as Timestamp).toDate();
                        String taskTime = DateFormat('dd/MM/yyyy, HH:mm').format(date).toString();
                    // si on a deja fait la mise au format dans le firestore : String contactTime = data['timestamp'].toString();
                    */

                // on retourne/crée la card de la task
                    return Card(
                        child: 
                            ListTile( // création de la liste        !!! A COMPLETER AVEC TODOLIST DE DAMIEN - UPDATE AND CO!!!
                            leading: Checkbox( 
                                value: taskState,
                                onChanged: (value) {},
                            ),
                            title : taskState ? Text(taskDsc, style: TextStyle(decoration: TextDecoration.lineThrough)) : Text(taskDsc), // si 2 : Text('${taskDsc} , ${taskRank}')
                            subtitle: Text(taskDate),
                            trailing:
                                Row(
                                mainAxisSize: MainAxisSize.min,  
                                    children: [
                                         // update button
                                        IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () => openToDolistForm(docId: docId),
                                        ),
                                        // delete button
                                        IconButton(
                                        icon: Icon(Icons.delete),
                                        onPressed: () => firestore.deleteToDoList(docId),
                                        ),
                                    ], // Row Children
                                ), // Row
                         ), // Listile
                    ); // card
                },//if
                ), // ListView
            ); // Container
            }   else {
                return Text('Aucune Tâche...'); // si n'a rien à afficher
                }
            },  
        ),      
        floatingActionButton: FloatingActionButton(
            onPressed: openToDolistForm,
            child: Icon(Icons.add),
        ),
    );
  }
}



*/







