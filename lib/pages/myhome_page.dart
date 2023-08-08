import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_fetch_api/models/user_model.dart';
import 'package:riverpod_fetch_api/providers/data_provider.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Riverpod Fetch API", textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: _data.when(
          data: (data) {
            List<UserModel> userList = data
                .map(
                  (e) => e,
                )
                .toList();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: userList.length,
                      itemBuilder: (_, index) {
                        return Card(
                          color: Colors.blue,
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            title: Text(
                              userList[index].firstName!,
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              userList[index].lastName!,
                              style: const TextStyle(color: Colors.white),
                            ),
                            trailing: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(userList[index].avatar!)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
