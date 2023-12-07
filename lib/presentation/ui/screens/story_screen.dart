import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenStory extends StatefulWidget {
  final String imagePath;
  final Duration duration;
  final String name;

  const FullScreenStory({
    Key? key,
    required this.imagePath,
    required this.duration,
    required this.name,
  }) : super(key: key);

  @override
  _FullScreenStoryState createState() => _FullScreenStoryState();
}

class _FullScreenStoryState extends State<FullScreenStory> {
  late bool timerCompleted;
  late double progressValue;

  @override
  void initState() {
    super.initState();
    timerCompleted = false;
    progressValue = 0.0;

    // Start a timer based on the provided duration
    Future.delayed(widget.duration, () {
      if (mounted) {
        setState(() {
          timerCompleted = true;
          progressValue = 1.0; // Set progress to max after timer completes
        });

        // Navigate back to the previous screen after the timer completes
        Navigator.pop(context);
      }
    });

    // Update the progress value dynamically with a smaller update interval
    const updateInterval = Duration(milliseconds: 16); // 60 FPS
    Timer.periodic(updateInterval, (timer) {
      if (mounted && !timerCompleted) {
        setState(() {
          progressValue +=
              updateInterval.inMilliseconds / widget.duration.inMilliseconds;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: 'imageHero', // Same tag as in the StoryWidget
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            if (!timerCompleted)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: LinearProgressIndicator(
                      value: progressValue.clamp(0.0, 1.0),
                      minHeight: 5.0,
                      backgroundColor: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(CupertinoIcons.xmark))
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
