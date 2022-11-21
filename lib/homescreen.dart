import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: TextFormField(
            controller: username,
            decoration: InputDecoration(labelText: "username"),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: TextFormField(
            controller: password,
            decoration: InputDecoration(labelText: "password"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if (password.text == "1234") {
                context.push("/signin", extra: username.text);
              } else {
                print("fail");
              }
            },
            child: Text("Signin"))
      ]),
    );
  }
}
