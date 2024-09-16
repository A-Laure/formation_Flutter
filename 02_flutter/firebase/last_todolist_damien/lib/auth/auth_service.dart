import 'package:firebase_auth/firebase_auth.dart';

class AuthService 
{

  // '_' declare en privé
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // signin / login
  Future<UserCredential> signIn(String email, password) async 
  {
    try
    {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } 
    on FirebaseAuthException catch(e) 
    {
      throw Exception(e.code);
    }
  }

  // signup / register
  Future<UserCredential> signUp(String email, password) async
  {
    try
    {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } 
    on FirebaseAuthException catch(e) 
    {
      throw Exception(e.code);
    }
  }


  // signout / logout
  Future<void> signOut() async 
  {
    // pas de return car on renvoie pas de données
    await _auth.signOut();
  }

}