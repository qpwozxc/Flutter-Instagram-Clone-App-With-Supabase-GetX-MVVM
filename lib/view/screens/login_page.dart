import 'package:clone_app/view/screens/s_main.dart';
import 'package:clone_app/view_model/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginViewModel viewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Instagram'),
        TextField(
          controller: viewModel.idController,
          decoration: InputDecoration(
            hintText: 'ID',
          ),
        ),
        TextField(
          controller: viewModel.passwordController,
          decoration: InputDecoration(
            hintText: 'Password',
          ),
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: viewModel.login,
          child: Text(
            'Log in',
          ),
        ),
      ]),
    ));
  }
}
