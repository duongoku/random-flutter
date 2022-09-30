import 'package:demo/Colors/CustomPalette.dart';

import 'package:flutter/material.dart';

class LessonSelectionScreen extends StatefulWidget {
  const LessonSelectionScreen({super.key});

  @override
  State<LessonSelectionScreen> createState() => _LessonSelectionScreenState();
}

class _LessonSelectionScreenState extends State<LessonSelectionScreen> {
  var memriseIcon = Image.asset(
    "assets/images/round_logo.png",
    width: 75,
    height: 75,
  );

  var threeVerticalDots =
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
    SizedBox(height: 10),
    Icon(Icons.circle, color: Colors.white, size: 10),
    SizedBox(height: 5),
    Icon(Icons.circle, color: Colors.white, size: 10),
    SizedBox(height: 5),
    Icon(Icons.circle, color: Colors.white, size: 10),
    SizedBox(height: 10),
  ]);

  toLearnScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/LearnScreen/', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomPalette.lighterPrimaryColor,
        title: const Text("Lesson Selection"),
      ),
      backgroundColor: CustomPalette.primaryColor,
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          memriseIcon,
          TextButton(
            onPressed: toLearnScreen,
            child: const Text(
              "1 - Words and Phrases",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: toLearnScreen,
            child: const Text(
              "The basics 1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          threeVerticalDots,
          memriseIcon,
          TextButton(
            onPressed: toLearnScreen,
            child: const Text(
              "2 - Grammar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: toLearnScreen,
            child: const Text(
              "How to sound polite",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          threeVerticalDots,
          memriseIcon,
          TextButton(
            onPressed: toLearnScreen,
            child: const Text(
              "3 - Words and Phrases",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: toLearnScreen,
            child: const Text(
              "The basics 2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
