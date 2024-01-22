import 'package:clone_app/view/s_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Instagram'),
        TextField(
          decoration: InputDecoration(
            hintText: 'ID',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
          ),
        ),
        ElevatedButton(
          onPressed: (() => Get.to(MainScreen())),
          child: Text(
            'Log in',
          ),
        ),
      ]),
    ));
  }
}
