import 'package:caluclator_flutter/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:math';

class CalcUI extends StatefulWidget {
  const CalcUI({Key? key}) : super(key: key);

  @override
  _CalcUIState createState() => _CalcUIState();
}

class _CalcUIState extends State<CalcUI> {
  List<String> constants = [
    'e',
    'π',
    '^',
  ];

  String question = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15.0),
        )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: Text("easy ",
                  style: GoogleFonts.pacifico(
                    fontSize: 30,
                  )),
            ),
            Text("Calc",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            // color: Colors.red,
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // For input question
                        alignment: Alignment.bottomRight,
                        child: Text(
                          question,
                          style: GoogleFonts.rubik(
                            fontSize: 30,
                          ),
                        ),
                        // color: Colors.blue,
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // For output result
                        alignment: Alignment.bottomRight,
                        child: Text(
                          result,
                          style: GoogleFonts.rubik(
                            fontSize: result.length < 15 ? 40 : 30,
                            color: Colors.green[900],
                          ),
                        ),
                        // color: Colors.pink,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  question = "";
                                  result = "";
                                });
                              },
                              child: Text(
                                "Clear",
                                style: GoogleFonts.rubik(
                                  color: Colors.red[600],
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(32.0),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    question = question.substring(
                                        0, question.length - 1);
                                  });
                                },
                                color: Colors.deepOrange,
                                icon: Icon(
                                  Icons.backspace,
                                ),
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.09,
                              ),
                            )),
                          )
                        ],
                      ),
                    )),
                Divider(
                  indent: 12,
                  endIndent: 12,
                  thickness: 2,
                  color: Colors.green[400],
                ),
              ],
            ),
          )),
          Expanded(
              flex: 2,
              child: Container(
                // color: Colors.yellow,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '(';
                                });
                              },
                              buttonText: '(',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += ')';
                                });
                              },
                              buttonText: ')',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '%';
                                });
                              },
                              buttonText: '%',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '÷';
                                });
                              },
                              buttonText: '÷',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '7';
                                });
                              },
                              buttonText: '7',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '8';
                                });
                              },
                              buttonText: '8',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '9';
                                });
                              },
                              buttonText: '9',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '×';
                                });
                              },
                              buttonText: '×',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '4';
                                });
                              },
                              buttonText: '4',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '5';
                                });
                              },
                              buttonText: '5',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '6';
                                });
                              },
                              buttonText: '6',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '−';
                                });
                              },
                              buttonText: '−',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '1';
                                });
                              },
                              buttonText: '1',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '2';
                                });
                              },
                              buttonText: '2',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '3';
                                });
                              },
                              buttonText: '3',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '+';
                                });
                              },
                              buttonText: '+',
                              colr: Colors.white,
                              textColr: Colors.green[800]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PopupMenuButton(
                            color: Colors.greenAccent[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            elevation: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 10),
                                child: Icon(
                                  Icons.arrow_upward_sharp,
                                  size: 24,
                                ),
                              )),
                            ),
                            onSelected: (String index) {
                              setState(() {
                                question += index;
                              });
                            },
                            itemBuilder: (context) {
                              return List.generate(3, (index) {
                                return PopupMenuItem(
                                  value: constants[index],
                                  child: Container(
                                    // color: Colors.green,
                                    child: Column(
                                      children: [
                                        Text(constants[index],
                                            style: GoogleFonts.rubik(
                                              fontSize: constants[index] == '^'
                                                  ? 30
                                                  : 25,
                                              color: Colors.black,
                                            )),
                                        Divider(
                                          thickness: 1.2,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                            },
                          ),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '0';
                                });
                              },
                              buttonText: '0',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  question += '.';
                                });
                              },
                              buttonText: '.',
                              colr: Colors.white,
                              textColr: Colors.black),
                          MyButton(
                              onClicked: () {
                                setState(() {
                                  resultEvaluation();
                                });
                              },
                              buttonText: '=',
                              colr: Colors.green,
                              textColr: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  bool checkOperator(String op) {
    if (op == '%' || op == '−' || op == '+' || op == '×' || op == '÷') {
      return true;
    }
    return false;
  }

  void resultEvaluation() {
    String givenExp = question;
    givenExp = question
        .replaceAll('−', '-')
        .replaceAll('×', '*')
        .replaceAll('÷', '/')
        .replaceAll('e', e.toStringAsFixed(10))
        .replaceAll('π', pi.toStringAsFixed(10));
    Parser p = Parser();
    try {
      Expression exp = p.parse(givenExp);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result = eval.toString();
      // result = eval.toStringAsFixed(12);
    } catch (e) {
      showError(context, "Invalid Expression");
      // print("Inavalid format");
    }
  }

  void showError(BuildContext context, String err) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          err,
          style: GoogleFonts.roboto(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xFF283637),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 24.0,
      ),
      barrierDismissible: true,
    );
  }
}
