import 'dart:async';

import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_tab_controller.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int timerValue = 95;
  late Timer timer;
  late TextEditingController codeController;

  @override
  void initState() {
    super.initState();
    startTimer();
    codeController = TextEditingController();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (timerValue > 0) {
          timerValue--;
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Time Expired"),
                content: Text("You didn't enter the code in time."),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Enter Verification code sent to your number",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              _buildEnterField(),
              SizedBox(height: 20),
              _buildTime(),
              SizedBox(height: 25),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(
        "Verification",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  Widget _buildEnterField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text(
            "Verification Code",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        TextField(
          controller: codeController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter a code",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${(timerValue ~/ 60).toString().padLeft(2, '0')}:${(timerValue % 60).toString().padLeft(2, '0')} min",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        InkWell(
          onTap: () {
            setState(() {
              timerValue = 95;
            });
            startTimer();
          },
          child: Text(
            "RESEND",
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        // Perform verification logic here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeTabContainerScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
      child: Text(
        "Submit",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            backgroundColor: Colors.green),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
