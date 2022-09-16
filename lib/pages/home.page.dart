import 'package:calculadora/models/button.model.dart';
import 'package:calculadora/widgets/rowbuttons.dart';
import 'package:flutter/material.dart';
import 'package:equations/equations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textResultados = '';
  String textOperaciones = '';

  String checkEquation(String equation) {
    String expression = equation;
    if (expression.contains('√')) {
      String digits = '0123456789';
      int index = expression.indexOf('√');
      String numbers = '';
      for (var i = index + 1; i < expression.length; i++) {
        if (digits.contains(expression[i])) {
          numbers += expression[i];
        } else {
          break;
        }
      }
      String auxiliar = expression.replaceAll('√$numbers', 'sqrt($numbers)');
      expression = auxiliar;
    }

    if (expression.contains('%')) {
      String auxiliar = expression.replaceAll('%', '/100');
      expression = auxiliar;
    }
    return expression;
  }

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
                  Text(textOperaciones),
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
                          setState(() {
                            textResultados += '%';
                          });
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
                            textOperaciones = "";
                            textResultados = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "<x",
                        metodo: () {
                          setState(() {
                            if (textResultados.isNotEmpty) {
                              textResultados = textResultados.replaceRange(
                                  textResultados.length - 1, null, '');
                            }
                          });
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
                          setState(() {
                            textResultados += '^2';
                          });
                        }),
                    ButtonModel(
                        titulo: "²√x",
                        metodo: () {
                          setState(() {
                            textResultados += '√';
                          });
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
                        titulo: "*",
                        metodo: () {
                          setState(() {
                            textResultados += "*";
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
                          setState(() {
                            textOperaciones += '\n$textResultados';
                            const parser = ExpressionParser();
                            textResultados = parser
                                .evaluate(checkEquation(textResultados))
                                .toString();
                          });
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
