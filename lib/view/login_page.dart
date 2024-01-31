import 'package:clone_app/view/s_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    // 로그인 함수
    try {
      await Supabase.instance.client.auth.signInWithPassword(
        // 로그인
        email: _idController.text,
        password: _passwordController.text,
      );
      Get.to(MainScreen()); // 로그인 성공시 홈 화면으로 이동
    } on AuthException catch (error) {
      // 에러 발생시
      Get.snackbar(
        // 에러 메시지 출력
        'Login Error',
        error.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Instagram'),
        TextField(
          controller: _idController,
          decoration: InputDecoration(
            hintText: 'ID',
          ),
        ),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: 'Password',
          ),
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: _login,
          child: Text(
            'Log in',
          ),
        ),
      ]),
    ));
  }
}
