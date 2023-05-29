import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*remove the debug label*/
      debugShowCheckedModeBanner: false,

      /*Background clear garda dekhaune app ko name*/
      title: 'WhatsApp UI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'WorkSansRegular',
      ),
      home: const HomeScreen(),
    );
  }
}
