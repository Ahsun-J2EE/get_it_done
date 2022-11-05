import 'package:GID/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  _getMainColumnUpperBody() {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.note_add,
            size: 150,
            color: Colors.amber,
          ),
          Text(
            "GID",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Text("The Ultimate Todo App",
              style: TextStyle(
                  fontSize: 20, letterSpacing: 4, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }

  _getMainColumnLowerBody() {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "The most advanced and feature proof task management app. Get It Done is the only ToDo app you will ever need!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                    onTap: () {
                      debugPrint("tapped");
                    },
                    title: "Sign In"),
                AppButton(
                  onTap: () {
                    debugPrint("tapped");
                  },
                  title: "Sign Up",
                  whiteButtton: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: Get.size.height,
          child: Column(
            children: [
              _getMainColumnUpperBody(),
              _getMainColumnLowerBody(),
            ],
          ),
        ),
      ),
    );
  }
}