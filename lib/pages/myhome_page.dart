import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Riverpod Fetch API", textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: const Center(child: Text("Fetch API")),
    );
  }
}
