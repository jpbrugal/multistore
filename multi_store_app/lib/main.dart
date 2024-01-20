import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store/views/buyers/auth/auth_screens/register_screen.dart';
import 'package:multi_store/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyA7VGnjpudPfQZvTf3xxwL6X5p1zqkiXeU",
              appId: "1:455843562232:android:e62ca33610423d0e93b10d",
              messagingSenderId: "455843562232",
              projectId: "multi-store-admin-ac1b1",
            storageBucket: "gs://multi-store-admin-ac1b1.appspot.com"
          )
    ) : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Brand-Bold',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade900),
        useMaterial3: false,
      ),
      home: RegisterScreen(),
    );
  }
}
