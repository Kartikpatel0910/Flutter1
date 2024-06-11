// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:rudra_it_hub/model/study_model.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/view/screens/chapter_screen.dart';

class StudyItem extends StatelessWidget {
  const StudyItem({super.key, required this.model});
  final Datum model;

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    // double screenWidth = getScreenWidth(context);

    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
      child: Container(
        height: screenHeight / 3.85,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3))
            ]),
        child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Standard : ${model.std}",
                      style: TextStyle(
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'New',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: screenHeight * 0.02,
                                color: Colors.white),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.009,
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.009,
                  color: Colors.grey,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: model.subjects.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 0, left: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChapterScreen(
                                          stdId: model.stdid,
                                          subId: model.subjects[index].subid,
                                          std: model.std,
                                          subject:
                                              model.subjects[index].subjectName,
                                        )));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                                                  color: greyColor,

                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(45),
                                  child: Image.network(
                                    model.subjects[index].img,
                                    height: screenHeight * 0.12,
                                    width: screenHeight * 0.12,
                                    fit: BoxFit.cover,
                                    loadingBuilder: (BuildContext context,
                                        Widget child,
                                        ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child;
                                      } else {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                    },
                                    errorBuilder: (BuildContext context,
                                        Object exception,
                                        StackTrace? stackTrace) {
                                      return Image.asset(
                                        placeHolder,
                                        height: screenHeight * 0.12,
                                        width: screenHeight * 0.12,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.009,
                            ),
                            SizedBox(
                                // width: screenWidth / 5,
                                child: Text(
                              model.subjects[index].subjectName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenHeight * 0.02,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ))
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
