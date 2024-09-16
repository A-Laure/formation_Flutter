import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todolist/auth/auth_service.dart';
import 'package:todolist/components/my_button.dart';
import 'package:todolist/components/my_textfield.dart';
import 'package:todolist/services/userStore.dart';

class RegisterPage extends StatelessWidget {
  
  final void Function() onTap;

  RegisterPage({super.key, required this.onTap});

// là on où va stocker la donnée saisie dans le champ par l'utilisateur
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nickNameController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController confirmPwdController = TextEditingController();
  

  void register(BuildContext context)  async {
    final AuthService authService = AuthService();
    final FirestoreUserService userService = FirestoreUserService(); // me donne accés au addUser

    if(pwdController.text == confirmPwdController.text){ // vérifie sie pwd = condirmm pwd et si oui try sinon else , on y a accés grâce au credentieal return ds auth-service

      try{ // essaye de faire ça 
       // authService.signUp(emailController.text, pwdController.text,nameController, nickNameController ); // firebase authentification
        //firestoreUser.addUser(nameController.text, nickNameController.text); // va dans le firstoreUser (Service) pour ici récupérer le addUser
        final UserCredential userCredential = await authService.signUp(emailController.text, pwdController.text); // tt est stocké ds les credential
        final String userId = userCredential.user!.uid; // on va chercher ds credential le champ que l'on veut, ! veut dire ne sera jamais null
        userService.addUser(userId, nameController.text, nickNameController.text, birthDateController.text);

      } catch (e) { // si erreur dit erreur
        
            showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else { // si pwd et email pas ok
      
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Password dont match !'),
              ));
    
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.person_add,
            size: 60,
          ),
      
          SizedBox(
            height: 24,                 // rajouter sized box des manquan
          ),
      
          // message text
          Text(
            'Create your account',
            style: TextStyle(fontSize: 16),
          ),
      
          SizedBox(
                height: 24,
              ),
          
              // Nom Texfield
              MyTextfield(
                hintText: 'Nom',
                obscureText: false,
                controller: nameController,
              ),

              SizedBox(
                height: 24,
              ),
          
              // Nom Texfield
              MyTextfield(
                hintText: 'Prénom',
                obscureText: false,
                controller: nickNameController,
              ),

          SizedBox(
            height: 24,
          ),
      
          // email Texfield
          MyTextfield(
            hintText: 'Email',
            obscureText: false,
            controller: emailController,
          ),

          SizedBox(
            height: 24,
          ),
      
          // email Texfield
          MyTextfield(
            hintText: 'BirthDate',
            obscureText: false,
            controller: birthDateController,
          ),
      
          SizedBox(
            height: 16,
          ),
      
          // Password Texfield
          MyTextfield(
            hintText: 'Password',
            obscureText: true,
            controller: pwdController,
          ),
      
          SizedBox(
            height: 16,
          ),
      
          // Password Texfield
          MyTextfield(
            hintText: 'Confirm Password',
            obscureText: true,
            controller: confirmPwdController,
          ),
          
      
          SizedBox(
            height: 20,
          ),
      
          // Bouton
          SizedBox(width:150,child: MyButton(text: 'Register', onPressed: () => register(context),)),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already an account ? '),
              TextButton(
                  onPressed: onTap,
                  child: Text(
                    'Login now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}