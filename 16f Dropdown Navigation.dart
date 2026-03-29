import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DropdownNavigation()));
}

class DropdownNavigation extends StatefulWidget {
  @override
  _DropdownNavigationState createState() => _DropdownNavigationState();
}

class _DropdownNavigationState extends State<DropdownNavigation> {
  String selected = 'Home';
  final List<String> pages = ['Home', 'About', 'Services', 'Contact'];

  Widget getPage() {
    return Center(
      child: Text('You are on $selected page', style: TextStyle(fontSize: 24)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Navigation'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton<String>(
              value: selected,
              dropdownColor: Colors.blue,
              style: TextStyle(color: Colors.white),
              items: pages.map((p) => DropdownMenuItem(value: p, child: Text(p))).toList(),
              onChanged: (val) => setState(() => selected = val!),
            ),
          ),
        ],
      ),
      body: getPage(),
    );
  }
}
