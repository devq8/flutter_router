import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Enter your username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter your password',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (password.text == '123' && username.text == 'Khaled') {
                  context.push('/signin', extra: username.text);
                } else {
                  print('Wrong Username or Password');
                }
              },
              child: Text('Sign In (Push)')),
          ElevatedButton(
              onPressed: () {
                if (password.text == '123' && username.text == 'Khaled') {
                  context.go('/signin', extra: username.text);
                } else {
                  print('Wrong Username or Password');
                }
              },
              child: Text('Sign In (Go)')),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Username = Khaled',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(
            'Password = 123',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
