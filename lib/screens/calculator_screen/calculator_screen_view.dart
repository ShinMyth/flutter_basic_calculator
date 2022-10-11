import 'package:basiccalculator/widgets/custom_outlined_buttons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreenView extends StatefulWidget {
  const CalculatorScreenView({Key? key}) : super(key: key);

  @override
  State<CalculatorScreenView> createState() => _CalculatorScreenViewState();
}

class _CalculatorScreenViewState extends State<CalculatorScreenView> {
  String initialValue = "0";
  String inputedValue = "";
  String calculatedValue = "";

  allClear() {
    setState(() {
      inputedValue = "";
      calculatedValue = "";
    });
  }

  clear() {
    setState(() {
      if (calculatedValue.isNotEmpty) {
        calculatedValue = "";
      }

      if (inputedValue.isNotEmpty) {
        // Checks if the last input value is an arithmetic operator
        if (inputedValue.substring(inputedValue.length - 1) == " ") {
          inputedValue = inputedValue.substring(0, inputedValue.length - 3);
        } else {
          inputedValue = inputedValue.substring(0, inputedValue.length - 1);
        }
      }
    });
  }

  inputNumberOrDecimalPoint({required String input}) {
    setState(() {
      if (calculatedValue.isNotEmpty) {
        // Checks if the previous calculated value is not 0
        if (calculatedValue != "0") {
          inputedValue = calculatedValue;
        } else {
          inputedValue = "";
        }

        calculatedValue = "";
      }

      if (inputedValue.isEmpty && input == "0") {
        return;
      } else if (inputedValue.isNotEmpty && input == "0") {
        List<String> listString = inputedValue.split(" ");
        // Checks if the last number equals to 0
        if (listString[listString.length - 1] == "0") {
          return;
        }
      }

      if (inputedValue.isEmpty && input == ".") {
        inputedValue += "0.";
        return;
      } else if (inputedValue.isNotEmpty && input == ".") {
        // Checks if the last input value is a decimal point
        if (inputedValue.substring(inputedValue.length - 1) == ".") {
          return;
        } else {
          List<String> listString = inputedValue.split(" ");
          // Checks if the last number has a decimal point already
          if (listString[listString.length - 1].contains(".")) {
            return;
          } else {
            // Checks if the last number equals to blank or empty
            if (listString[listString.length - 1] == "") {
              inputedValue += "0.";
            } else {
              inputedValue += ".";
            }
            return;
          }
        }
      }

      if (input != "0" && input != ".") {
        List<String> listString = inputedValue.split(" ");
        // Checks if the last number equals to 0
        if (listString[listString.length - 1] == "0") {
          inputedValue = inputedValue.substring(0, inputedValue.length - 1);
        }
      }

      inputedValue += input;
    });
  }

  inputArithmeticOperator({required String input}) {
    setState(() {
      if (calculatedValue.isNotEmpty) {
        inputedValue = calculatedValue;

        calculatedValue = "";
      }

      if (inputedValue.isNotEmpty) {
        // Checks if the last input value is neither an arithmetic operator, negative symbol and a decimal point
        if (inputedValue.substring(inputedValue.length - 1) != " " &&
            inputedValue.substring(inputedValue.length - 1) != "-" &&
            inputedValue.substring(inputedValue.length - 1) != ".") {
          inputedValue += input;
        }
      } else {
        // Checks if the input value negative
        if (input == " - ") {
          inputedValue += "-";
        }
      }
    });
  }

  calculateInput() {
    setState(() {
      if (inputedValue.isNotEmpty) {
        // Check if the inputed value is a negative symbol only
        if (inputedValue == "-") {
          inputedValue = "";
          return;
        }

        // Checks if the last input value is an arithmetic operator
        if (inputedValue.substring(inputedValue.length - 1) == " ") {
          inputedValue = inputedValue.substring(0, inputedValue.length - 3);
        }

        inputedValue = inputedValue.replaceAll('×', '*');
        inputedValue = inputedValue.replaceAll('÷', '/');

        String finalInputedValue = inputedValue;

        Parser p = Parser();
        Expression exp = p.parse(finalInputedValue);
        ContextModel cm = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, cm);

        // Checks if eval is a whole number
        if (eval % 1 == 0) {
          int newEval = eval.toInt();
          calculatedValue = newEval.toString();
        } else {
          calculatedValue = eval.toString();
        }

        inputedValue = inputedValue.replaceAll('*', '×');
        inputedValue = inputedValue.replaceAll('/', '÷');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Basic Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (calculatedValue.isNotEmpty) ...[
                  AutoSizeText(
                    inputedValue,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 23.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    maxLines: 4,
                  ),
                  SizedBox(height: 1.h),
                ],
                AutoSizeText(
                  calculatedValue.isNotEmpty
                      ? calculatedValue
                      : inputedValue.isNotEmpty
                          ? inputedValue
                          : initialValue,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 23.sp,
                    color: calculatedValue.isNotEmpty
                        ? Colors.blueAccent
                        : Colors.black.withOpacity(0.7),
                  ),
                  maxLines: 5,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: const Divider(thickness: 1.25),
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FunctionOutlinedButton(
                onPressed: () {
                  allClear();
                },
                buttonLabel: "AC",
              ),
              FunctionOutlinedButton(
                onPressed: () {
                  clear();
                },
                buttonLabel: "C",
              ),
              SizedBox(width: 17.w),
              ArithmeticOperatorOutlinedButton(
                onPressed: () {
                  inputArithmeticOperator(input: " ÷ ");
                },
                buttonLabel: "÷",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "7");
                },
                buttonLabel: "7",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "8");
                },
                buttonLabel: "8",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "9");
                },
                buttonLabel: "9",
              ),
              ArithmeticOperatorOutlinedButton(
                onPressed: () {
                  inputArithmeticOperator(input: " × ");
                },
                buttonLabel: "×",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "4");
                },
                buttonLabel: "4",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "5");
                },
                buttonLabel: "5",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "6");
                },
                buttonLabel: "6",
              ),
              ArithmeticOperatorOutlinedButton(
                onPressed: () {
                  inputArithmeticOperator(input: " - ");
                },
                buttonLabel: "-",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "1");
                },
                buttonLabel: "1",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "2");
                },
                buttonLabel: "2",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "3");
                },
                buttonLabel: "3",
              ),
              ArithmeticOperatorOutlinedButton(
                onPressed: () {
                  inputArithmeticOperator(input: " + ");
                },
                buttonLabel: "+",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 17.w),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: "0");
                },
                buttonLabel: "0",
              ),
              NumberOrDecimalPointOutlinedButton(
                onPressed: () {
                  inputNumberOrDecimalPoint(input: ".");
                },
                buttonLabel: ".",
              ),
              ElevatedButton(
                onPressed: () {
                  calculateInput();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(17.w, 17.w),
                  maximumSize: Size(17.w, 17.w),
                  shape: const CircleBorder(),
                ),
                child: Text(
                  "=",
                  style: TextStyle(fontSize: 21.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
        ],
      ),
    );
  }
}
