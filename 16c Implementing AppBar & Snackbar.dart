import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AppBarSnackBar()));
}

class AppBarSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Example'),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Info Button Pressed!')),
            );
          }),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Hello Snackbar!'),
                action: SnackBarAction(label: 'OK', onPressed: () {}),
              ),
            );
          },
        ),
      ),
    );
  }
}
