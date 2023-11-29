import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Input",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Output",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        //button area
        Row(
          children: [
            button(
                text: "AC", buttonBgColor: operatorColor, tcolor: orangeColor),
            button(
                text: "<", buttonBgColor: operatorColor, tcolor: orangeColor),
            button(text: ""),
            button(
                text: "/", buttonBgColor: operatorColor, tcolor: orangeColor),
          ],
        ),
        Row(
          children: [
            button(text: "7"),
            button(text: "8"),
            button(text: "9"),
            button(
                text: "x", tcolor: orangeColor, buttonBgColor: operatorColor),
          ],
        ),
        Row(
          children: [
            button(
              text: "4",
            ),
            button(text: "5"),
            button(text: "6"),
            button(
                text: "-", tcolor: orangeColor, buttonBgColor: operatorColor),
          ],
        ),
        Row(
          children: [
            button(
              text: "1",
            ),
            button(text: "2"),
            button(text: "3"),
            button(
                text: "+", tcolor: orangeColor, buttonBgColor: operatorColor),
          ],
        ),
        Row(
          children: [
            button(
                text: "%", tcolor: orangeColor, buttonBgColor: operatorColor),
            button(text: "0"),
            button(text: "."),
            button(text: "=", buttonBgColor: orangeColor),
          ],
        ),
      ]),
    );
  }

  Widget button({text, tcolor = Colors.white, buttonBgColor = buttonColor}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(22),
            primary: buttonBgColor,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: tcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
