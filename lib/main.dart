import 'package:flutter/material.dart';
import 'package:clone_app/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Application entry point

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:'',
    anonKey: '',
  );
  runApp(
    const MyApp(),
  );
}
