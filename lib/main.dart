
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:authentication/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyD9VRkL5mOkgR0qx_McnwG6uZ4s1-Y5840",
      appId: "1:530790239861:android:c08cab6b787525d595f23c",
      messagingSenderId: "530790239861",
      projectId: "authentication-5253d",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email and Password Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
