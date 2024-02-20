import 'package:flutter/material.dart';
import 'components/my_textfield.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
           const Icon(Icons.account_tree, size: 100, color: Colors.blue),
            const SizedBox(height: 50),
            const Text('Welcome to MangaR',style: TextStyle(fontSize: 30, color: Colors.blue)),
            
            MyTextField(
              controller: TextEditingController(),
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 10),

            MyTextField(
              controller: TextEditingController(),
              hintText: 'Password',
              obscureText: true,
            ),


          ]),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}
