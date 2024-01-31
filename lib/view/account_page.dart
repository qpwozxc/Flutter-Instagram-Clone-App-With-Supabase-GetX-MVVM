import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Account Page'),
        ],
      ),
    ));
  }
}
