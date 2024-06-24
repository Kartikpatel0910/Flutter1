Pro 2303

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              // height: 680,
              width: 90,
              color: Colors.blueAccent,
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Container(
                  // height: 680,
                  width: 90,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.limeAccent,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 190,
                            width: 150,
                            color: Colors.lightGreenAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 190,
                                width: 50,
                                color: Colors.purple,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.teal,
                        height: 50,
                        width: 200,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.lightBlue,
                            width: 200,
                            height: 110,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ),
  );
}



PRO 2304

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 420,
                color: Colors.brown,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 170,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                        height: 150,
                        width: 230,
                        color: Colors.purple,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.lightBlue,
                    margin: EdgeInsets.fromLTRB(4, 0, 2, 0),
                    height: 379,
                    width: 400,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          color: Colors.deepOrangeAccent,
                          height: 390,
                          width: 110,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          color: Colors.pinkAccent,
                          height: 390,
                          width: 110,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              color: Colors.indigoAccent,
                              height: 170,
                              width: 140,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              color: Colors.purpleAccent,
                              height: 189,
                              width: 140,
                              
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
