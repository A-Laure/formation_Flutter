import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:todolist/theme/light_mode.dart';
import 'package:todolist/services/firestoreToDoList.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // on instancie la class FirestoreToDoList service (qui se trouve ds le fichier firestoreToDoList.dart dans le dossier services)
  final FireStoreToDoListService firestore = FireStoreToDoListService();

 // là on où va stocker la donnée saisie dans le champ task par l'utilisateur
  final TextEditingController taskController = TextEditingController();
  //final TextEditingController stateController = TextEditingController(); 
  //final TextEditingController dateController = TextEditingController(); 
  

 
 
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: 
      
     
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          // container qui contient la ligne du textfield d'ajout et du '+' qui sert de bouton valider
            Container(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: 

          // ligne du textfield d'ajout et du '+' qui sert de bouton valider
              Row(
                children: [
          // Barre d'ajout d'une nouvelle tâche
                  Expanded(
                    child: 
                    TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'New task',
                          contentPadding: EdgeInsets.all(8)),
                    ),
                  ),
        
        // Container du '+' qui valide l'ajout
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: lightMode.colorScheme.primary,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      onPressed: () {
                        firestore.addTask(taskController.text); // fait appel dans le firestore à Future<void> addTask
                        taskController.clear(); // vide le taskController
                      },
                      color: Colors.white,
                      icon: Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),

    // Titre de la liste des tâches
            Text(
              'Tasks',
              style: TextStyle(fontSize: 24),
            ),

            // Ecoute des modifs en live 
            StreamBuilder(
              stream: firestore.getToDoListStream(), // stream paramétré dans firestoreToDoList.dart
              builder: (context, snapshot) {
                if (snapshot.hasData) {   // si il y a des datas
                  List todoList = snapshot.data!.docs; // créer / ajouter dans la liste todolist
           
            // et retourne la liste des tâches
                  return Container(
                    child: ListView.builder(
                      
                      // creer une liste scrollable 
                      shrinkWrap: true, // permet d'empaqueter à la taille, si liste pas trop grande
                      itemCount: todoList.length, // on compte la longueur de la liste
                      itemBuilder: (context, index) {
                        DocumentSnapshot task = todoList[index]; // il récupère un à un les index de la List todolist
                        String taskId = task.id; // et met dans la variable taskId
                      
                      // création d'une map
                        Map<String, dynamic> data = task.data() as Map<String, dynamic>; // récupère tt ce qui a ds Firebase/document
                        String taskText = data['task'];
                        bool taskState = data['state'];
                        String taskDate = data['timestamp'].toString();
                      
                      // et retourne une card pour chaque tâche
                        return Card(
                          child: ListTile(

                            // checkbox
                            leading: Checkbox( // avec une checkbox
                              value: taskState,
                              onChanged: (value) { // qd on clique sur la checkbox, il met à jour la collection en changeant la valeur de state de true à false ou de false à true
                                firestore.updatetoDoList(taskId, taskText, value!); 
                              },
                            ),
                            
                            // si le statut est true/false, on barre le texte sinon on le laisse non barré
                            title: taskState ? Text(taskText, style: TextStyle(decoration: TextDecoration.lineThrough),) : Text(taskText),
                            // sous titre avec la date
                            subtitle: Text(taskDate), // date en sous titre
                            trailing: /*Row( // trailing = ce qui s'affiche après le titre (la tâche ici)
                              mainAxisSize: MainAxisSize.min,
                              children: [*/

                              Slidable(  // 1ère partie : 
                              key: Key(taskId), // on récupère l'id de la tâche donné par l'index de l'itemBuilder
                              endActionPane: ActionPane( // on met le slidable à la fin
                                motion: ScrollMotion(), //A motion is a widget used to control how the pane animates.
                                children: [
                                  // Création de nos 2 slides (edit et delete)
                                  // update slide
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(15),
                                    onPressed: (context) => firestore.updatetoDoList(taskId, taskText, taskState), // on lui donne new donnée
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.white,
                                    icon: Icons.edit,
                                  ),
                                  // delete slide
                                   SlidableAction(
                                    borderRadius: BorderRadius.circular(15),
                                    onPressed: (context) => firestore.deleteToDoList(taskId),
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                  ),
                                  
                                ], // slidable children
                              ),

                              // 2ème partie : slidable a besoin d'un child, le child = ce que voit l'utilisateur
                              child: Card(
                                elevation: 2,
                                color: taskState ? Colors.white60 : Colors.white,
                                child: CheckboxListTile(
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: taskState ? Text(taskText,  style: TextStyle(decoration: TextDecoration.lineThrough),) : Text(taskText),
                                  value: taskState,
                                  onChanged: (value) => firestore.updatetoDoList(taskId, taskText, taskState),
                               
                              ),
                            ),  
                            ),

                          ),
                        );

                      }, // itemBuilder
                    ),
                  );
                } else {
                  return Text('Aucunes taches...'); // si aucune tâche, affiche ce message
                }
              },
            )
          ],
        ),
      ),
    );
  }
}




