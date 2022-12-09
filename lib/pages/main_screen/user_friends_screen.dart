import 'package:auto_route/auto_route.dart';
import 'package:demo/router/router.gr.dart';
import 'package:flutter/material.dart';

class UserFriendsScreen extends StatelessWidget {
  const UserFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Friends"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'User Friends Screen',
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.navigate(UserProfileScreenRoute()),
              child: Text(
                'Back to user',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
