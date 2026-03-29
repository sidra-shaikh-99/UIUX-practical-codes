import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MediaPlayer()));
}

class MediaPlayer extends StatefulWidget {
  @override
  _MediaPlayerState createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  bool isPlaying = false;
  String status = 'Stopped';
  double progress = 0;

  void togglePlay() {
    setState(() {
      isPlaying = !isPlaying;
      status = isPlaying ? 'Playing...' : 'Paused';
    });
  }

  void stop() {
    setState(() {
      isPlaying = false;
      status = 'Stopped';
      progress = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video & Audio Player')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(isPlaying ? Icons.music_note : Icons.music_off, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text(status, style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Slider(value: progress, onChanged: (v) => setState(() => progress = v)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(Icons.skip_previous, size: 36), onPressed: stop),
                IconButton(icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, size: 48), onPressed: togglePlay),
                IconButton(icon: Icon(Icons.stop, size: 36), onPressed: stop),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
