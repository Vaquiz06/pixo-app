import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Mostrar el email del usuario
            Text(
              'Email: ${user?.email ?? "No disponible"}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Mostrar el UID del usuario
            Text(
              'UID: ${user?.uid ?? "No disponible"}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Botón para cerrar sesión
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();

                // Asegurarse de que el widget sigue montado antes de navegar
                if (!context.mounted) return;

                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[700], // Color de fondo del botón
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              ),
              child: const Text('Cerrar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
