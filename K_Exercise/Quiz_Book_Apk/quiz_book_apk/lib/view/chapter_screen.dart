import 'package:get/get.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/view/quiz_page.dart';
import 'package:flutter/material.dart';

class ChapterScreen extends StatefulWidget {
  const ChapterScreen({super.key});

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            '5: English',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return InkWell(
                      onTap: () {
                        Get.to(()=> QuizPage());
                      },
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsetsDirectional.symmetric(vertical: 5),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(numimg),
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 25, color: white),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('STD : 5'),
                          Text(
                            'Ch No: 1 The Little Bully ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              ClipOval
                              
                              (
                                  child: Image.asset(
                                logo,
                                height: 30,
                                width: 30,
                              )),
                              SizedBox(
                                width: 4,
                              ),
                              Text('Rahul Jetani'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                qcion,
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Quetion No.5'),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                timg,
                                height: 15,
                                width: 15,
                              ),
                              Text('10 min'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )));
  }
}
