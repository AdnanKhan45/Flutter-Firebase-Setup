
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Setup"),
      ),
      body: Center(
        child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.green),
          shape: BoxShape.circle
        ),
        child: Center(child: Text("Success", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.green),))),
      ),
    );
  }
}

