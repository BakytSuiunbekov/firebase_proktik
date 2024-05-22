import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_proktik/firebase_options.dart';
import 'package:firebase_proktik/pages/login.page.dart';
import 'package:firebase_proktik/pages/auth_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: AuthPage(),
      home: const LoginPage(),
    );
  }
}
