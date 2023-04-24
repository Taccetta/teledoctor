import 'package:flutter/material.dart';

//imports firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//Pages
import 'package:teledoctor/pages/add_medic.dart';
import 'package:teledoctor/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Teledoctor',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddMedic(),
      },
    );
  }
}
