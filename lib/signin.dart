import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signin extends StatefulWidget {
  Signin({required this.name, Key? Key}) : super(key: Key);
  final String name;
  @override
  State<Signin> createState() => _signinState();
}

class _signinState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Welcome ${widget.name}")));
  }
}
