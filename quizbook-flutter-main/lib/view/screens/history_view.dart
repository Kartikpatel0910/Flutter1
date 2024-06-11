// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rudra_it_hub/controller/history_controller.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/view/screens/history_result_screen.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  HistoryController historyController = HistoryController();

  @override
  void initState() {
    historyController.loadData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int noOfCorrectAnswer = 0;
    int noOfTotalQuestion = 7;
    double percent = noOfCorrectAnswer / noOfTotalQuestion;
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    return RefreshIndicator(
      color: Colors.purple,
      strokeWidth: 2,
      displacement: 150,
      onRefresh: () async {
        setState(() {
          historyController.loadData(context);
        });
      },
      child: Obx(
        () => Scaffold(
            appBar: AppBar(
              title: const Text(
                "My Activity",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // actions: const <Widget>[
              //   Padding(
              //     padding: EdgeInsets.only(right: 11, top: 5),
              //     child: Text('Clear All'),
              //   )
              // ],
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 2,
              shadowColor: Colors.grey,
            ),
            body: historyController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                :historyController.historyModel.value.data.isEmpty ?  ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: const Center(
                        child: Text(
                          "No Result Available",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                  },
                ): 
                
                ListView.builder(


                    itemCount: historyController.historyModel.value.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: screenHeight * 0.025),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HistoryDetail(
                                    chapterHistory: historyController
                                        .historyModel.value.data[index]),
                              ));
                            },
                            child: Container(
                                height: screenHeight * 0.18,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4)),
                                    border: Border.all(color: Colors.black12),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: const Offset(0, 3))
                                    ]
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'STD : ${historyController.historyModel.value.data[index].std}',
                                            style: TextStyle(
                                              fontSize: screenHeight * 0.022,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.009,
                                          ),
                                          Text(
                                            '${historyController.historyModel.value.data[index].subjectName} - Chapter : ${historyController.historyModel.value.data[index].chapterNo}. ${historyController.historyModel.value.data[index].chapterName}',
                                            style: TextStyle(
                                              fontSize: screenHeight * 0.02,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.009,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                  height: screenHeight * 0.02,
                                                  width: screenHeight * 0.02,
                                                  child: Image.asset(
                                                      'assets/images/time_icon.png')),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Center(
                                                child: Text(
                                                  formatTimestamp(
                                                      historyController
                                                          .historyModel
                                                          .value
                                                          .data[index]
                                                          .submitTime),
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.017,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.01,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: purpleColor
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10))),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7,
                                                  right: 7,
                                                  top: 2,
                                                  bottom: 3),
                                              child: Text(
                                                'Done',
                                                style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.017,
                                                    fontWeight: FontWeight.bold,
                                                    color: purpleColor),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                      CircularPercentIndicator(
                                        radius: screenHeight * 0.045,
                                        lineWidth: 5.0,
                                        percent: historyController
                                                .historyModel
                                                .value
                                                .data[index]
                                                .totalRightQuestions /
                                            historyController.historyModel.value
                                                .data[index].totalQuestions,
                                        center: Text(
                                          "${((historyController.historyModel.value.data[index].totalRightQuestions / historyController.historyModel.value.data[index].totalQuestions) * 100).toStringAsFixed(0)}%",
                                          style: TextStyle(
                                            fontSize: screenHeight * 0.02,
                                          ),
                                        ),
                                        progressColor: purpleColor,
                                      )
                                    ],
                                  ),
                                )),
                          ));
                    },
                  )),
      ),
    );
  }

  String formatTimestamp(DateTime submitTime) {
    final now = DateTime.now();
    final difference = now.difference(submitTime);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else {
      return DateFormat('yyyy-MM-dd').format(submitTime);
    }
  }
}
