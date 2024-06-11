// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rudra_it_hub/controller/subject_controller.dart';

import 'package:rudra_it_hub/model/study_model.dart';
import 'package:rudra_it_hub/widgets/study_item.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({
    super.key,
  });

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  List<Temperatures> studyList = [];
  Temperatures? studyModel;

  final SubjectProvider provider = Get.put(SubjectProvider());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Standards",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 2,
          shadowColor: Colors.grey,
        ),
        body: RefreshIndicator(
          color: Colors.purple,
          strokeWidth: 2,
          displacement: 180,
          onRefresh: () async {
            setState(() {
              provider.clearModel();
              provider.fetchStudyModel(context);
              setState(() {});
            });
          },
          child: Obx(
            () {
              if (provider.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (provider.stdList.value.data.isEmpty) {
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: const Center(
                        child: Text(
                          "Currently No Quiz Available",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                  },
                );
              } else {
                bool anySubjectNotEmpty = provider.stdList.value.data
                    .any((element) => element.subjects.isNotEmpty);
                if (anySubjectNotEmpty) {
                  return ListView.builder(
                    itemCount: provider.stdList.value.data.length,
                    itemBuilder: (context, index) {
                      if (provider.stdList.value.data[index].subjects.isEmpty) {
                        print('if');
                        return SizedBox(
                          height: 0,
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                // height:
                                //     MediaQuery.of(context).size.height * 0.8,
                                // child: const Center(
                                //   child: Text(
                                //     "Currently No Quiz Available1",
                                //     style: TextStyle(fontSize: 20),
                                //   ),
                                // ),
                              );
                            },
                          ),
                        );
                      } else {
                        print("else");
                        return StudyItem(
                          model: provider.stdList.value.data[index],
                        );
                      }
                    },
                  );
                } else {
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: const Center(
                          child: Text(
                            "Currently No Quiz Available2",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      );
                    },
                  );
                }
              }
            },
          ),
        ));
  }
}
