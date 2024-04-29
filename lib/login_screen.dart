import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthenticationCheck(),
    );
  }
}

class AuthenticationCheck extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Authentication Check'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Verificar la autenticación
            User? user = _auth.currentUser;
            if (user != null) {
              // Usuario autenticado
              print('Usuario autenticado: ${user.uid}');
            } else {
              // Usuario no autenticado
              print('Usuario no autenticado');
            }
          },
          child: Text('Verificar autenticación'),
        ),
      ),
    );
  }
}
