import 'package:flutter/material.dart';
import 'package:manga_app/components/my_botton.dart';
import 'package:manga_app/components/square_tile.dart';
import '/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  void signUserIn() {}
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(Icons.airlines, size: 100, color: Colors.black),
              const SizedBox(height: 30),
              const Text('Welcome to MangaR',
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
              const SizedBox(height: 20),
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
                    Text(
                      'Forgot Password?',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Text(
                      'or continue with',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/Google.png'),
                  SizedBox(width: 10),
                  SquareTile(imagePath: 'lib/images/Apple.png'),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                      style: TextStyle(color: Colors.grey[600], fontSize: 15)),
                  const SizedBox(width: 5),
                  const Text('Register Now',
                      style: TextStyle(color: Colors.blue, fontSize: 15)),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
