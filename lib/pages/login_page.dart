import 'package:flutter/material.dart';
import 'package:manga_app/components/my_bottom.dart';
import '/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
 LoginPage({super.key});


final usernameController=TextEditingController();
final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const Icon(Icons.account_tree, size: 100, color: Colors.blue),
            const SizedBox(height: 50),
            const Text('Welcome to MangaR',
                style: TextStyle(fontSize: 30, color: Colors.blue)),
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
              
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',style: TextStyle(color: Colors.grey.shade600,fontSize: 15),),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const MyButton(),
          ]),
        ),
      ),
    );
  }
}
