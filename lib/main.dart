import 'package:clone_app/view/screens/login_page.dart';
import 'package:clone_app/view/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.get("PROJECT_URL"),
    anonKey: dotenv.get("PROJECT_API_KEY"),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 734),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) => Builder(
        builder: (BuildContext context) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Clone App',
          theme: ThemeData(
            primaryColor: Colors.black,
            useMaterial3: true,
          ),
          // home: const LoginPage(),
          home: MainPage(),
        ),
      ),
    );
  }
}
