import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NumberOperation()));
}

class NumberOperation extends StatefulWidget {
  @override
  _NumberOperationState createState() => _NumberOperationState();
}

class _NumberOperationState extends State<NumberOperation> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String result = '';

  void calculate(String op) {
    double a = double.parse(num1.text);
    double b = double.parse(num2.text);
    double res = 0;
    if (op == '+') res = a + b;
    if (op == '-') res = a - b;
    if (op == '*') res = a * b;
    if (op == '/' && b != 0) res = a / b;
    setState(() => result = 'Result: $res');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Number Operation')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: num1, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Number 1')),
            TextField(controller: num2, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Number 2')),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => calculate('+'), child: Text('+')),
                ElevatedButton(onPressed: () => calculate('-'), child: Text('-')),
                ElevatedButton(onPressed: () => calculate('*'), child: Text('*')),
                ElevatedButton(onPressed: () => calculate('/'), child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
