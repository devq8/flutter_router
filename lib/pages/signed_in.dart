import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final String username;

  const SignIn({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Access'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome ${username}',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
