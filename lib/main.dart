import 'package:flutter/material.dart';
import 'Calscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey, useMaterial3: false),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 71, 96, 109),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Calculator',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 14, 11, 5)),
            ),
            centerTitle: true,
          ),
          body: const Calscreen(),
        ),
      ),
    );
  }
}
