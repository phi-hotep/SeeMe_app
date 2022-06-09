// Page de login

import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';

class LoginScreen extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: SeeMePages.login,
        key: ValueKey(SeeMePages.login),
        child: const LoginScreen());
  }

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/seeme-modified.png'),
                ),
              ),
            ),
            Container(
              color: Colors.black54.withOpacity(0.7),
            ),
            Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.mail),
                            border: const UnderlineInputBorder(),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.red.withOpacity(0.5),
                            ),
                          ),
                          controller: _emailTextController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.key),
                            border: const UnderlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.red.withOpacity(0.5),
                            ),
                          ),
                          controller: _passwordTextController,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forget your password?'),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Any account? ',
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Sign up',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
