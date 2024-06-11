// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calscreen extends StatefulWidget {
  const Calscreen({super.key});

  @override
  State<Calscreen> createState() => _CalscreenState();
}

class _CalscreenState extends State<Calscreen> {
  String p = "";
  String exp = "";
  String ans = "";
  bool anson = false;
  Color getButtonColor() {
    print(anson);
    return anson
        ? const Color.fromARGB(255, 234, 44, 44)
        : const Color.fromARGB(255, 25, 26, 25);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(2, 10, 15, 15),
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height * 0.11,
              child: Text(
                exp,
                style: const TextStyle(
                    color: Color.fromARGB(255, 71, 69, 63), fontSize: 28),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(2, 10, 15, 15),
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Text(
                ans,
                style: const TextStyle(
                    color: Color.fromARGB(255, 71, 69, 63), fontSize: 28),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Table(
                    border: const TableBorder(
                        horizontalInside: BorderSide(width: 1),
                        top: BorderSide(width: 1),
                        left: BorderSide(width: 1),
                        right: BorderSide(width: 1),
                        verticalInside: BorderSide(width: 1)),
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(252, 225, 59, 48)),
                                onPressed: (() {
                                  setState(() {
                                    exp = "";
                                  });
                                }),
                                child: const Text(
                                  "AC",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(252, 225, 59, 48)),
                                onPressed: (() {
                                  setState(() {
                                    exp = exp.substring(0, exp.length - 1);
                                  });
                                }),
                                child: const Text("Del",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black))),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: getButtonColor(),
                                ),
                                onPressed: (() {
                                  if (anson == true) addexp("k");
                                }),
                                child: const Text(
                                  "Ans",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 88, 98, 112)),
                                onPressed: (() {
                                  addexp("√");
                                }),
                                child: const Text(
                                  "√",
                                  style: TextStyle(fontSize: 21),
                                )),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("^");
                                }),
                                child: const Text(
                                  "^",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("(");
                                }),
                                child: const Text(
                                  "(",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp(")");
                                }),
                                child: const Text(
                                  ")",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 88, 98, 112)),
                                onPressed: (() {
                                  addexp("-");
                                }),
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 33, color: Colors.white),
                                )),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("7");
                                }),
                                child: const Text(
                                  "7",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("8");
                                }),
                                child: const Text(
                                  "8",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("9");
                                }),
                                child: const Text(
                                  "9",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 88, 98, 112)),
                                onPressed: (() {
                                  addexp("/");
                                }),
                                child: const Text(
                                  "÷",
                                  style: TextStyle(
                                      fontSize: 33, color: Colors.white),
                                )),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("4");
                                }),
                                child: const Text(
                                  "4",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("5");
                                }),
                                child: const Text(
                                  "5",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("6");
                                }),
                                child: const Text(
                                  "6",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 88, 98, 112)),
                                onPressed: (() {
                                  addexp("*");
                                }),
                                child: const Text(
                                  "×",
                                  style: TextStyle(
                                      fontSize: 33, color: Colors.white),
                                )),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("1");
                                }),
                                child: const Text(
                                  "1",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("2");
                                }),
                                child: const Text(
                                  "2",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("3");
                                }),
                                child: const Text(
                                  "3",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 88, 98, 112)),
                                onPressed: (() {
                                  addexp("+");
                                }),
                                child: const Text(
                                  "+",
                                  style: TextStyle(fontSize: 30),
                                )),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  Table(
                    border: const TableBorder(
                        bottom: BorderSide(width: 1),
                        top: BorderSide(width: 1),
                        left: BorderSide(width: 1),
                        right: BorderSide(width: 1),
                        verticalInside: BorderSide(width: 1)),
                    columnWidths: const {
                      0: FractionColumnWidth(0.25),
                      1: FractionColumnWidth(0.25),
                    },
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp(".");
                                }),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "•",
                                      style: TextStyle(fontSize: 30),
                                    ))),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                onPressed: (() {
                                  addexp("0");
                                }),
                                child: const Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                )),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 61, 95, 142)),
                                onPressed: () {
                                  answer(exp);
                                },
                                child: const Text(
                                  "=",
                                  style: TextStyle(fontSize: 27),
                                )),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void answer(String exp) {
    setState(() {
      exp = exp.replaceAll('k', p);
      exp = exp.replaceAll('√', "sqrt");

      Parser parser = Parser();
      Expression expression = parser.parse(exp);
      double result = expression.evaluate(EvaluationType.REAL, ContextModel());
      print(result.runtimeType);
      if (result % 1 == 0) {
        // If the result is an integer, convert it to a string without decimal points
        ans = result.toInt().toString();
      } else {
        // If the result has decimal places, format it with 2 decimal places
        ans = result.toString();
      }

      anson = true;
      p = ans;
    });
  }

  void addexp(String expr) {
    setState(() {
      exp += expr;
    });
  }
}
