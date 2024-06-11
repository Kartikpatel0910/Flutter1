import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/controller/chapter_controller.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/view/screens/quiz_view_alpesh.dart';

// ChapterController chProvider = ChapterController();
final ChapterController chProvider = Get.put(ChapterController());

class ChapterScreen extends StatefulWidget {
  const ChapterScreen({
    super.key,
    required this.subId,
    required this.stdId,
    required this.subject,
    required this.std,
  });

  final String subject;
  final int subId;
  final int stdId;
  final String std;

  @override
  State<ChapterScreen> createState() {
    return _ChapterScreenState();
  }
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  void initState() {
    chProvider.fetchChapter(widget.stdId, widget.subId, context);
    super.initState();
  }

  @override
  void dispose() {
    chProvider.clearModel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = getScreenHeight(context);
    return RefreshIndicator(
      color: Colors.purple,
      strokeWidth: 2,
      displacement: 180,
      onRefresh: () async {
        setState(() {
          chProvider.fetchChapter(widget.stdId, widget.subId, context);
        });
      },
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            title: Text(
              "${widget.std} : ${widget.subject.toUpperCase()}",
              style: TextStyle(fontSize: getScreenHeight(context) * 0.035),
            ),
          ),
          body: chProvider.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : chProvider.chapterList.value.data.isEmpty
                  ? ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: 
                            
                             Center(
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(noData, height: screenHeight * 0.191326531,width: screenHeight *0.191326531,),
                                    const  Text(
                                        "NO Chapter Availbale",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                )
                            );
                      },
                    )
                  : ListView.builder(
                      itemCount: chProvider.chapterList.value.data.length,
                      itemBuilder: (context, index) {
                        final item = chProvider.chapterList.value.data[index];

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizScreen(
                                  stdId: widget.stdId,
                                  subId: widget.subId,
                                  chapterId: item.chapterid,
                                  titleName: item.content,
                                ),
                              ),
                            );
                          },
                          child: CustomItem(
                            logoIndex: item.chapterno.toString(),
                            chName: item.content,
                            teacherName: item.teacher,
                            questionNo: item.que,
                            min: item.minute,
                          ),
                        );
                      },
                    ),
        ),
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  final String logoIndex;
  final String chName;
  final String teacherName;
  final int questionNo;
  final String min;

  const CustomItem({
    super.key,
    required this.logoIndex,
    required this.chName,
    required this.teacherName,
    required this.questionNo,
    required this.min,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    print(screenWidth);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 7,bottom: 7),
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Container(
                width: screenHeight * 0.082908163,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/normal_number_bg.png',
                        width: screenHeight * 0.082908163,
                        height: screenHeight * 0.082908163,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      logoIndex,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 0.65,
                    child: Text(
                      "Ch No $logoIndex : $chName",
                      style: TextStyle(
                        color: Colors.black,
                        
                        overflow: TextOverflow.ellipsis,
                        fontSize: screenHeight * 0.025,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: screenHeight * 0.015,
                        backgroundImage:
                            const AssetImage('assets/images/logo.png'),
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        teacherName,
                        style: TextStyle(fontSize: screenHeight * 0.023),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/question_icon.png',
                        height: screenHeight * 0.02,
                        width: screenHeight * 0.02,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Question No: $questionNo',
                        style: TextStyle(fontSize: screenHeight * 0.02),
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Image.asset(
                        'assets/images/time_icon.png',
                        height: screenHeight * 0.02,
                        width: screenHeight * 0.02,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        min,
                        style: TextStyle(fontSize: screenHeight * 0.02),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
