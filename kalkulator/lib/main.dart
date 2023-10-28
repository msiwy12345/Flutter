import 'package:flutter/material.dart';
import 'calculatorscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var res = '';
  double digit = 0;

  double outputs = 0;
  double outputsx = 1;
  var sign = '';
  void calculate(double digit, var sign) {
    if (sign == '%') {
      output(digit, sign);
      setState(() {
        if (outputsx == 1) {
          res = outputs.toString();
        } else {
          res = outputsx.toString();
        }
        digit = 0;
      });
    } else {
      output(digit, sign);
      setState(() {
        if (sign != '*') {
          res = outputs.toString();
        } else {
          res = outputsx.toString();
        }
        digit = 0;
      });
    }
  }

  void output(double digit, var sign) {
    switch (sign) {
      case '+':
        outputs += digit;
        break;
      case '-':
        outputs -= digit;
        break;
      case '*':
        outputsx *= digit;
        break;
      case '%':
        if (digit != 0) {
          outputs /= digit;
        } else {
          outputs = 0;
          outputsx = 1;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme:
                const AppBarTheme(color: Color.fromARGB(255, 117, 86, 28))),
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 151, 121, 56),
          appBar: AppBar(
            title: const Text('Kalkulator'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ResultScreen(
                    result:
                        res), ////////////////////////// tutaj mam widget z wynikiem//////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          outputs = 0;
                          outputsx = 1;
                          digit = 0;
                          sign = '';
                          res = outputs.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('delete'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {},
                        child: const Text('x^2'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {},
                        child: const Text('x^1/2'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          sign = '%';

                          calculate(digit, sign);
                          digit = 0;
                        },
                        child: const Text('%'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 7;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);

                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('7'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 8;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('8'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 9;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('9'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          sign = '*';

                          calculate(digit, sign);
                          digit = 0;
                        },
                        child: const Text('*'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 4;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('4'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 5;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('5'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 6;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('6'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          sign = '-';

                          calculate(digit, sign);
                          digit = 0;
                        },
                        child: const Text('-'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 1;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('1'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 2;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('2'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 3;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('3'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          sign = '+';

                          calculate(digit, sign);
                          digit = 0;
                        },
                        child: const Text('+'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {},
                        child: const Text('+/-'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {
                          var temp = 0;
                          digit = (digit * 10) + temp;
                          //calculate(digit, sign);
                          res = digit.toString();

                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('0'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown),
                        onPressed: () {},
                        child: const Text(','),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          calculate(digit, sign);
                          if (sign == '*') {
                            res = outputsx.toString();
                          } else {
                            res = outputs.toString();
                          }

                          //digit = 0;
                          sign = '';
                          setState(() {
                            ResultScreen(
                              result: res,
                            );
                          });
                        },
                        child: const Text('='),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ));
  }
}
