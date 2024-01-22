import 'package:clone_app/view/s_login_page.dart';
import 'package:flutter/material.dart';
import 'package:clone_app/view/s_main.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone App',
      theme: ThemeData(
        primaryColor: Colors.black,
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
