import 'package:calculadora/models/button.model.dart';
import 'package:calculadora/widgets/rowbuttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textResultados = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.grey,
              child: Row(
                children: [
                  Text("Operaciones"),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.grey[600],
            child: Row(
              children: [
                Text(textResultados),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  rowbuttons([
                    ButtonModel(
                        titulo: "%",
                        metodo: () {
                          print("%");
                        }),
                    ButtonModel(
                        titulo: "CE",
                        metodo: () {
                          print("CE");
                        }),
                    ButtonModel(
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            textResultados = "0";
                          });
                        }),
                    ButtonModel(
                        titulo: "<x",
                        metodo: () {
                          print("<x");
                        }),
                  ]),
                  rowbuttons([
                    ButtonModel(
                        titulo: "1/x",
                        metodo: () {
                          print("1/x");
                        }),
                    ButtonModel(
                        titulo: "x²",
                        metodo: () {
                          print("x²");
                        }),
                    ButtonModel(
                        titulo: "²√x",
                        metodo: () {
                          print("²√x");
                        }),
                    ButtonModel(
                        titulo: "/",
                        metodo: () {
                          setState(() {
                            textResultados += "/";
                          });
                        }),
                  ]),
                  rowbuttons([
                    ButtonModel(
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            textResultados += "7";
                          });
                        }),
                    ButtonModel(
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            textResultados += "8";
                          });
                        }),
                    ButtonModel(
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            textResultados += "9";
                          });
                        }),
                    ButtonModel(
                        titulo: "x",
                        metodo: () {
                          setState(() {
                            textResultados += "x";
                          });
                        }),
                  ]),
                  rowbuttons([
                    ButtonModel(
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            textResultados += "4";
                          });
                        }),
                    ButtonModel(
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            textResultados += "5";
                          });
                        }),
                    ButtonModel(
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            textResultados += "6";
                          });
                        }),
                    ButtonModel(
                        titulo: "-",
                        metodo: () {
                          setState(() {
                            textResultados += "-";
                          });
                        }),
                  ]),
                  rowbuttons([
                    ButtonModel(
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            textResultados += "1";
                          });
                        }),
                    ButtonModel(
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            textResultados += "2";
                          });
                        }),
                    ButtonModel(
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            textResultados += "3";
                          });
                        }),
                    ButtonModel(
                        titulo: "+",
                        metodo: () {
                          setState(() {
                            textResultados += "+";
                          });
                        }),
                  ]),
                  rowbuttons([
                    ButtonModel(
                        titulo: "+/-",
                        metodo: () {
                          print("+/-");
                        }),
                    ButtonModel(
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            textResultados += "0";
                          });
                        }),
                    ButtonModel(
                        titulo: ",",
                        metodo: () {
                          print(",");
                        }),
                    ButtonModel(
                        titulo: "=",
                        metodo: () {
                          print("=");
                        }),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
