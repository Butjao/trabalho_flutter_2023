import 'package:flutter/material.dart';
import 'package:trabalho1/confs/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter trabalho',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: routesOfApp, //chama a pagina pela rota ali do confs
    );
  }
}
