import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AlphabetImage()));
}

class AlphabetImage extends StatefulWidget {
  @override
  _AlphabetImageState createState() => _AlphabetImageState();
}

class _AlphabetImageState extends State<AlphabetImage> {
  String letter = 'A';
  final List<String> alphabets = List.generate(26, (i) => String.fromCharCode(65 + i));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alphabet Image App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.blue[100],
            child: Center(
              child: Text(letter, style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue)),
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            alignment: WrapAlignment.center,
            children: alphabets.map((l) => Padding(
              padding: EdgeInsets.all(4),
              child: ElevatedButton(
                onPressed: () => setState(() => letter = l),
                child: Text(l),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
