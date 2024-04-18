import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
              child: const Text('0', style: TextStyle(fontSize: 48.0)),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SimpleButton(label: '7'),
                  SimpleButton(label: '8'),
                  SimpleButton(label: '9'),
                  SimpleButton(label: '/'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SimpleButton(label: '4'),
                  SimpleButton(label: '5'),
                  SimpleButton(label: '6'),
                  SimpleButton(label: '*'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  SimpleButton(label: '1'),
                  SimpleButton(label: '2'),
                  SimpleButton(label: '3'),
                  SimpleButton(label: '-'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SimpleButton(label: '0'),
                  SimpleButton(label: '.'),
                  SimpleButton(label: 'Clear'),
                  SimpleButton(label: '+'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [SimpleButton(label: '='),],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String label;

  const SimpleButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(label, style: const TextStyle(fontSize: 24)),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
