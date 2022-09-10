import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Text("Operaciones"),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Text("Resultados"),
          ),
          Container(
            height: 100,
            color: Colors.blue,
            child: Text("Botones"),
          )
        ],
      ),
    );
  }
}
