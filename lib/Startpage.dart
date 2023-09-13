import 'package:easyloan/Homepage.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'transactionslist.dart';

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.black,
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.05, top: height * 0.1),
              child: Container(
                height: height * 0.2,
                width: width * 0.8,
                // color: Colors.deepPurple,
                child: Text(
                  "Online \nDigital Loan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.06,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.05, top: height * 0.39),
              child: Container(
                height: height * 0.1,
                width: width * 0.8,
                // color: Colors.red,
                child: Text(
                  "Installments without a credit \ncard, buy now, pay later",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.2, top: height * 0.7),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ));
                },
                child: Container(
                  height: height * 0.11,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        // Colors.purple,
                        Colors.deepPurple,
                        Colors.deepPurple,
                      ], begin: Alignment.topLeft)),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.029,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: height * 0.5, left: width * 0.2),
              child: Container(
                  height: height * 0.4,
                  child: Lottie.network(
                      "https://lottie.host/d26d0290-e3d9-491c-9db4-1a2909e4dbb6/HX6GMmbfHO.json")

                  // Lottie.asset('assets\animation_lm9vw66s.json')
                  ),
            ),
          )
        ],
      ),
    );
  }
}
