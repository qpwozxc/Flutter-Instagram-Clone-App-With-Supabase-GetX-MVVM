import 'package:clone_app/view/screens/main_page.dart';
import 'package:clone_app/view_model/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          'images/instagram-logo.svg',
        ),
        SizedBox(
          height: 39.h,
        ),
        Container(
          height: 44.h,
          color: Color(0xFFFAFAFA),
          child: TextField(
            controller: viewModel.idController,
            decoration: InputDecoration(
              hintText: 'ID',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 44.h,
          color: Color(0xFFFAFAFA),
          child: TextField(
            controller: viewModel.passwordController,
            decoration: InputDecoration(
              hintText: 'Password',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
              ),
            ),
            obscureText: true,
          ),
        ),
        SizedBox(
          height: 63.h,
        ),
        Container(
          width: double.infinity,
          height: 44.h,
          child: TextButton(
            onPressed: viewModel.login,
            child: Text(
              'Log in',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF3797EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
