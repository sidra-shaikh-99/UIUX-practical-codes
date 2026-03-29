import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FontSelector()));
}

class FontSelector extends StatefulWidget {
  @override
  _FontSelectorState createState() => _FontSelectorState();
}

class _FontSelectorState extends State<FontSelector> {
  double fontSize = 20;
  FontWeight fontWeight = FontWeight.normal;
  FontStyle fontStyle = FontStyle.normal;
  String selectedFont = 'Normal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Font Selector')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Sample Text', style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle)),
            SizedBox(height: 20),
            Text('Font Size: ${fontSize.toInt()}'),
            Slider(
              value: fontSize,
              min: 10,
              max: 50,
              onChanged: (val) => setState(() => fontSize = val),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => fontWeight = fontWeight == FontWeight.bold ? FontWeight.normal : FontWeight.bold),
                  child: Text('Bold'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => fontStyle = fontStyle == FontStyle.italic ? FontStyle.normal : FontStyle.italic),
                  child: Text('Italic'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
