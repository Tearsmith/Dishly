import 'package:dishly/core/theme/theme.dart';
import 'package:dishly/features/presentation/pages/Login_page.dart';
import 'package:dishly/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dishly',
      theme: AppTheme.darkThemeMode,
      home: LoginPage(),
    );
  }
}
