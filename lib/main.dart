import 'package:flutter/material.dart';
import 'package:mercadolivre/components/constants.dart';
import 'package:mercadolivre/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Mercado Livre',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.blue,  
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
          iconTheme: IconThemeData(color: Colors.black),
          actionsIconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true
        )   
      ),
      home: const WelcomeScreen(),
    );
  }
}