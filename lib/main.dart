import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ai_detects_diabetic_retinopathy/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Try to initialize only if not already initialized
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyABVOQ1vkoFAdFiuGK0MmhDogvEh1uGSOY",
          projectId: "ai-diabetic-retinopathy",
          storageBucket: "ai-diabetic-retinopathy.appspot.com",
          messagingSenderId: "2502263692",
          appId: "1:2502263692:web:bb2bc8e552a6ac7cb88ca9",
          measurementId: "G-TLP6BMBFE7",
        ),
      );
    }
  } catch (e) {
    // Firebase already initialized - ignore
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomePage(),
    );
  }
}
