import 'package:flutter/material.dart';
import 'package:donut_app_2b_diaz/pages/login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donut App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // 👇 Aquí cambiamos la pantalla inicial
      home: const LoginPage(),
    );
  }
}
