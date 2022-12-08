import 'package:auto_route/auto_route.dart';
import 'package:demo/router/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Signup Screen',
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.router.navigate(LoginScreenRoute()),
              child: Text(
                'Go to LoginScreen',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.router.replace(UserScreenRoute()),
              child: Text(
                'Signup (UserScreen)',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
