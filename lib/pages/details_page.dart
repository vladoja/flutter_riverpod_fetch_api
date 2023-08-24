import 'package:flutter/material.dart';
import 'package:riverpod_fetch_api/models/user_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.userModel}) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Center(
              child: CircleAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(userModel.avatar!),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              userModel.firstName!,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              userModel.lastName!,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Email: ${userModel.email!}',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
