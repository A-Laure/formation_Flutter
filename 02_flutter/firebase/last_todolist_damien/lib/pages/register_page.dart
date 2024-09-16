import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/auth/auth_service.dart';
import 'package:todo_app/components/my_button.dart';
import 'package:todo_app/components/my_textfield.dart';
import 'package:todo_app/services/userstore.dart';

class RegisterPage extends StatelessWidget {
  
  final void Function() onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController confirmPwdController = TextEditingController();

  void register(BuildContext context) async {
    final AuthService authService = AuthService();
    final UserstoreService userService = UserstoreService();

    if(pwdController.text == confirmPwdController.text){

      try{
        final UserCredential userCredential =  await authService.signUp(emailController.text, pwdController.text);
        final String userId = userCredential.user!.uid;
        userService.addUser(userId, lastnameController.text, firstnameController.text, birthdateController.text);

      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      
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
            Icons.app_registration_rounded,
            size: 60,
          ),
      
          SizedBox(
            height: 48,
          ),
      
          // message text
          Text(
            'Create your account',
            style: TextStyle(fontSize: 16),
          ),
      
          SizedBox(
            height: 24,
          ),
      
          // lastname Texfield
          MyTextfield(
            hintText: 'Lastname',
            obscureText: false,
            controller: lastnameController,
          ),
      
          SizedBox(
            height: 16,
          ),

          // lastname Texfield
          MyTextfield(
            hintText: 'Firstname',
            obscureText: false,
            controller: firstnameController,
          ),
      
      
          SizedBox(
            height: 16,
          ),

          // lastname Texfield
          MyTextfield(
            hintText: 'Birthdate',
            obscureText: false,
            controller: birthdateController,
          ),
      
          SizedBox(
            height: 16,
          ),

          // email Texfield
          MyTextfield(
            hintText: 'Email',
            obscureText: false,
            controller: emailController,
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
          MyButton(text: 'Register', onPressed: () => register(context),),
      
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