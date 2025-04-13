import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChanged = !isChanged;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: isChanged ? 300 :200,
            width: isChanged ? 300 :200,
            color: isChanged ? Colors.amber : Colors.deepPurple,
          )
        ),
      )
    );
  }
}