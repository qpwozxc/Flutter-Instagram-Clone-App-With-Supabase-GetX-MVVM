import 'package:clone_app/view/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined),
        title: SvgPicture.asset(
          'images/instagram-logo.svg',
          width: 105.w,
        ),
        actions: [
          Icon(Icons.send),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 98.h,
              color: Colors.red,
            ),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
