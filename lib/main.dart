import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:flutter/material.dart';
import 'package:hospital_data/screens/hospitals.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDAY3U7Fw2uKyg5seck8euwIobCCgvelsk",
        authDomain: "hospitaldatacollection-fff48.firebaseapp.com",
        projectId: "hospitaldatacollection-fff48",
        storageBucket: "hospitaldatacollection-fff48.appspot.com",
        messagingSenderId: "211222328984",
        appId: "1:211222328984:web:af9118c651aab6cf1682ed",
        measurementId: "G-CNC95Y490S"
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // final Future<FirebaseAppWeb> _initialization = FirebaseAppWeb.initializeAppWed();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Data Collection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          if(snapshot.hasError){
            print('error');
          }
          if(snapshot.connectionState == ConnectionState.done){
            return hospitals();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}

