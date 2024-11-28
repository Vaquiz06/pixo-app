import 'package:flutter/material.dart';
import 'package:pixo/pages/login_page.dart';
import 'package:pixo/pages/register_page.dart';
import 'package:pixo/pages/home_page.dart';
import 'package:pixo/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // El parámetro 'key' es ahora un super parámetro.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixo App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),  // Usamos const para mejorar el rendimiento
        '/register': (context) => const RegisterPage(),  // Usamos const
        '/home': (context) => const HomePage(),  // Usamos const
        '/profile': (context) => const ProfilePage(),  // Usamos const
      },
    );
  }
}
