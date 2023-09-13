import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'transactionslist.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List? transname;
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.black,
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.1,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Container(
                  child: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: width * 0.25,
                ),
                SizedBox(
                  width: width * 0.3,
                  child: Text(
                    "MyLoan",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: width * 0.15,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.purple,
                  foregroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/5f/e1/b5/5fe1b59406304cf4eaae870c970abeee.jpg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.035,
          ),
          Container(
            height: height * 0.3,
            width: width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 194, 88, 212),
                Colors.purple,
                Colors.deepPurple
              ]),
            ),
            child: Stack(
              children: [
                SizedBox(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: height * 0.15),
                      child: Text(
                        "PAY WITHIN 12 MONTHS",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(
                          bottom: height * 0.15, left: width * 0.6),
                      child: Icon(
                        Icons.info,
                        color: Colors.white,
                        size: height * 0.035,
                      )),
                ),
                SizedBox(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.045),
                      child: Text(
                        "Transaction limit",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.16, right: height * 0.21),
                      child: Text(
                        "\$",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.155),
                      child: Text(
                        "12,960",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: height * 0.05,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height * 0.15,
            width: width * 0.9,
            // color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.09,
                  width: width * 0.16,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: height * 0.09,
                  width: width * 0.16,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.wallet,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: height * 0.09,
                  width: width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Apply for a loan",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                          letterSpacing: -1),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            height: height * 0.5,
            width: width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
            child: Stack(children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: height * 0.3),
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        "Recent Transactions",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.08),
                child: Center(
                  child: Container(
                    // color: Colors.amber,
                    height: height * 0.314,
                    width: width * 0.9,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          height: height * 0.1,
                          width: width,
                          // color: Colors.pinkAccent,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.005),
                                child: CircleAvatar(
                                  radius: height * 0.035,
                                  backgroundColor:
                                      Color.fromARGB(227, 236, 236, 236),
                                  child: Icon(
                                    Icons.arrow_drop_up,
                                    size: height * 0.07,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: width * 0.15,
                                      bottom: height * 0.015),
                                  child: Container(
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    // color: Colors.black,
                                    child: Text(
                                      trans[0][index],
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: height * 0.024,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: width * 0.15, top: height * 0.05),
                                  child: Container(
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    // color: Colors.black,
                                    child: Text(
                                      "Feb 19 - 2:35 PM",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black45,
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: width * 0.65, top: height * 0.03),
                                  child: Container(
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    // color: Colors.black,
                                    child: Text(
                                      "+\$${trans[1][index]}.00",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ]),
          ))
        ],
      ),
    );
  }
}
