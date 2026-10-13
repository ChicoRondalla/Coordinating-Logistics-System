import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // Asegura que los componentes de Flutter estén listos antes de cargar Firebase
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicializa la conexión a tu base de datos
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const SistemaLogisticaApp());
}

class SistemaLogisticaApp extends StatelessWidget {
  const SistemaLogisticaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logística Coordinadora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6200EA)),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            '¡Conexión a Firebase Exitosa!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}