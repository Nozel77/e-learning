import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leaderboard {
  String name;
  int score;

  Leaderboard(
    this.name,
    this.score,
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Leaderboard> leaderboard = [
    Leaderboard(
      "aku",
      1,
    ),
    Leaderboard(
      "koe",
      2,
    ),
    Leaderboard(
      "kon",
      3,
    ),
    Leaderboard(
      "sampean",
      4,
    ),
    Leaderboard(
      "panjenengan",
      5,
    ),
    Leaderboard(
      "kamu",
      6,
    ),
    Leaderboard(
      "you",
      7,
    ),
    Leaderboard(
      "tempek",
      8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Leaderboard"),
          backgroundColor: Colors.teal,
        ),
        body: LeaderboardWidget(leaderboard),
      ),
    );
  }
}

class LeaderboardWidget extends StatelessWidget {
  List<Leaderboard> leaderboard;

  LeaderboardWidget(this.leaderboard);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: leaderboard.length,
      itemBuilder: (context, index) {
        Leaderboard leaderboardItem = leaderboard[index];
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            children: [
              SizedBox(width: 16),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text(leaderboardItem.name[0],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
              SizedBox(width: 16),
              Text(leaderboardItem.name, style: TextStyle(fontSize: 16)),
              Spacer(),
              Text(leaderboardItem.score.toString(),
                  style: TextStyle(fontSize: 16)),
            ],
          ),
        );
      },
    );
  }
}
