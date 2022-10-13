import 'package:app_todo/Homepage.dart';
import 'package:app_todo/Secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': ((context) => const Homepage()),
        '/itens': ((context) => const SecondPage()),
      },
      initialRoute: '/home',
    );
  }
}
