import 'package:clone_app/view/screens/s_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginViewModel extends GetxController {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // add getter
  TextEditingController get idController => _idController;
  TextEditingController get passwordController => _passwordController;
  Future<void> login() async {
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
}
