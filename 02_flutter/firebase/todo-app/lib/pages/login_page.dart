import 'package:flutter/material.dart';
import 'package:todo_app/auth/auth_service.dart';
import 'package:todo_app/components/my_button.dart';
import 'package:todo_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final void Function() onTap;

  LoginPage({super.key, required this.onTap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  void login(BuildContext context) async {
    // AuthService instaciation
    final AuthService authService = AuthService();

    // essaye de se connecter
    try {
      await authService.signIn(emailController.text, pwdController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
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
            Icons.login,
            size: 60,
          ),
      
          SizedBox(
            height: 48,
          ),
      
          // message text
          Text(
            'Welcome back, you\'ve missed',
            style: TextStyle(fontSize: 16),
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
            height: 16,
          ),
      
          // Password Texfield
          MyTextfield(
            hintText: 'Password',
            obscureText: true,
            controller: pwdController,
          ),
      
          SizedBox(
            height: 20,
          ),
      
          // Bouton
          MyButton(
            text: 'Login',
            onPressed: () => login(context),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member ? '),
              TextButton(
                  onPressed: onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
