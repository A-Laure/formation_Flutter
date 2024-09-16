import 'package:firebase_auth/firebase_auth.dart';


class AuthService {

  // '_' declare en privé
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // signin / login
  Future<UserCredential> signIn(String email, password) async {
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential; // j'ai accés à ce que je viens de créer dc ici mail et pwd
    } on FirebaseAuthException catch(e) {
      throw Exception(e.code);
    }
  }

  // signup / register
  Future<UserCredential> signUp(String email, password) async{        // VERIFIER SUR DAMIEN
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      final uid = userCredential.user!.uid; 
      return userCredential;
    } on FirebaseAuthException catch(e) { // stock dans une variable ('e' ici)
      throw Exception(e.code); // en cas d'erreur, renvoie le code erreur
    }
  }


  // signout / logout
  Future<void> signOut() async {
    // pas de return car on renvoie pas de données
    await _auth.signOut();
  }





}