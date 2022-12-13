import 'package:auto_route/auto_route.dart';
import 'package:demo/models/data.dart';
import 'package:demo/router/router.gr.dart';
import 'package:demo/services/dio_client.dart';
import 'package:demo/utils/extension/image_etx.dart';
import 'package:flutter/material.dart';

import '../../models/User.dart';

class UserFriendsScreen extends StatefulWidget {
  const UserFriendsScreen({super.key});

  @override
  State<UserFriendsScreen> createState() => _UserFriendsScreenState();
}

class _UserFriendsScreenState extends State<UserFriendsScreen> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Friends"),
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: _client.getUser(id: '1'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;
              if (userInfo != null) {
                Data userData = userInfo.data;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildImage(userData.avatar),
                    SizedBox(height: 8.0),
                    Text(
                      '${userInfo.data.firstName} ${userInfo.data.lastName}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      userData.email,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    ElevatedButton(
                      onPressed: () => _toUserProfile(context),
                      child: Text(
                        'Back to user',
                      ),
                    ),
                  ],
                );
              }
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  void _toUserProfile(BuildContext context) {
    context.router.navigate(UserProfileScreenRoute());
  }
}
