// ignore_for_file: sized_box_for_whitespace, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/view/screens/dashboard_view.dart';
import 'package:rudra_it_hub/view/screens/history_view.dart';


class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen(
      {super.key, required this.noOfWrongAns, required this.noOfTrueAns});
  final int noOfWrongAns;
  final int noOfTrueAns;
  // final TextStyle commonTextStyle = const TextStyle(
  //   fontSize: 20,
  //   color: Colors.white,
  //   fontWeight: FontWeight.w500,
  // );

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.08,
              ),
              Image.asset(
                trophyImage,
                scale: 3.5,
                height: screenHeight * 0.2,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                'Congratulation',
                style: TextStyle(fontSize: screenHeight * 0.05,color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                'You have completed s successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: screenHeight * 0.02, color: Colors.white),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.045,
                    width: screenWidth * 0.4,

                    child: ElevatedButton(

                        onPressed: () {},
                        style: ElevatedButton.styleFrom(

                          backgroundColor: resultTrueColor,
                        ),
                        child: Text(
                          '$noOfTrueAns correct',
                          style: TextStyle(
                              color: Colors.white, fontSize: screenHeight * 0.025 ,overflow: TextOverflow.ellipsis),
                        )),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  SizedBox(
                    height: screenHeight * 0.045,
                    width: screenWidth * 0.4,
                    child: ElevatedButton(

                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: resultFalseColor,
                        ),
                        child: Text(
                          '$noOfWrongAns Incorrect',
                          style: TextStyle(
                              color: Colors.white, fontSize: screenHeight * 0.025  ,overflow: TextOverflow.ellipsis),
                        )),
                  ),
                ],
              ),
              // CommonButton(
              //   onPress: () {},
              //   title: 'View the result',
              // ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                  width: screenWidth * 0.95,
                  height: screenHeight * 0.05,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(whiteColor),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: const BorderSide(color: whiteColor)))),
                      onPressed: () {
                        Get.off(()=>History());
                      },
                      child:  Text(
                        'View the result',
                        style: TextStyle(color: purpleColor ,fontSize: screenHeight * 0.03 ,overflow: TextOverflow.ellipsis),
                      ))),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                height: screenHeight * 0.05,
                   width: screenWidth *0.95,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(purpleColor),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: const BorderSide(color: whiteColor)))),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => AppbarBottomBarScreen(),), (route) => false);
                      },
                      child:  Text(
                        'Start a new quiz',
                        style: TextStyle(color: whiteColor ,fontSize: screenHeight * 0.03 ,overflow: TextOverflow.ellipsis),
                      ))),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              // InkWell(
              //   onTap: () {
              //     // Handle the click event here.
              //     print('Text clicked!');
              //   },
              //   child:  Text(
              //     'Give Feedback',
              //     style: TextStyle(
              //       color: whiteColor,
              //       fontSize: screenHeight * 0.02,
              //       decoration: TextDecoration.underline,
              //     ),
              //   ),
              // )
            ]),
      ),
    );
  }
}
