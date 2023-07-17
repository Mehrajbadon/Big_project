import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayer1 extends StatelessWidget {
  final List<String> audioPaths = [
    'assets/audio/best_arabic_nat.mp3',
    'assets/audio/facebook.mp3',
    'assets/audio/sura_ad_duha.mp3',
  ];

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xDDB7E3FF);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Audio Player",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: myColor,
      ),
      body: ListView.builder(
        itemCount: audioPaths.length,
        itemBuilder: (context, index) {
          var title = audioPaths[index].split('/').last.split('.').first;
          return Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Card(
              color: myColor,
              child: ListTile(
                leading: Icon(Icons.audiotrack, size: 40),
                title: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  Fluttertoast.showToast(
                    msg: "You Selected $title",
                  );
                  AudioPlayer player = AudioPlayer();
                  await player.setAsset(audioPaths[index]);
                  await player.play();
                  player.dispose();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
