import 'package:auto_route/auto_route.dart';
import 'package:demo/router/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'User Details Screen',
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
            ElevatedButton(
              onPressed: () =>
                  context.router.root.replaceAll([UserFriendsScreenRoute()]),
              child: Text(
                'User friend',
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.root.replaceAll([LoginScreenRoute()]),
              child: Text(
                'LOGOUT',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
