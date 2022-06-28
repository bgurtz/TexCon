import 'package:firebase_core/firebase_core.dart';
import 'package:C:timeproject/time_app/lib/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time App',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: SignIn_Screen(),
    );
  }
}