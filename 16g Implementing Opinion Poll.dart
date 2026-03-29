import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: OpinionPoll()));
}

class OpinionPoll extends StatefulWidget {
  @override
  _OpinionPollState createState() => _OpinionPollState();
}

class _OpinionPollState extends State<OpinionPoll> {
  int yesVotes = 0;
  int noVotes = 0;

  @override
  Widget build(BuildContext context) {
    int total = yesVotes + noVotes;
    return Scaffold(
      appBar: AppBar(title: Text('Opinion Poll')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Do you like Flutter?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Text('Yes Votes: $yesVotes', style: TextStyle(fontSize: 20)),
            Text('No Votes: $noVotes', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text('Total Votes: $total', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'yes',
            onPressed: () => setState(() => yesVotes++),
            child: Text('YES'),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'no',
            onPressed: () => setState(() => noVotes++),
            child: Text('NO'),
          ),
        ],
      ),
    );
  }
}
