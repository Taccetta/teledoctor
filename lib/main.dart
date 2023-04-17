import 'package:flutter/material.dart';

//imports firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:teledoctor/services/firebase_service.dart';

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
    return const MaterialApp(
      title: 'Mobile Teledoctor',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App'),
      ),
      body: FutureBuilder(
        future: getMedics(),
        builder: ((context, snapshot) {
          return const Text('hola');
        }),
      ),
    );
  }
}
