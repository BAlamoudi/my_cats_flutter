import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController origin = TextEditingController();
  TextEditingController maxWeight = TextEditingController();
  TextEditingController minWeight = TextEditingController();
  TextEditingController length = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => SizedBox(
                height: 400,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text("Add New Cat"),
                        ElevatedButton(
                            onPressed: () async {
                              final ImagePicker picker = ImagePicker();
                            },
                            child: Icon(Icons.add_photo_alternate)),
                        TextField(
                          controller: name,
                          decoration: InputDecoration(hintText: "name"),
                        ),
                        TextField(
                          controller: origin,
                          decoration: InputDecoration(hintText: "origin"),
                        ),
                        TextField(
                          controller: name,
                          decoration: InputDecoration(hintText: "maxWeight"),
                        ),
                        TextField(
                          controller: name,
                          decoration: InputDecoration(hintText: "minWeight"),
                        ),
                        TextField(
                          controller: name,
                          decoration: InputDecoration(hintText: "length"),
                        ),
                      ],
                    ))));
      }),
    );
  }
}
