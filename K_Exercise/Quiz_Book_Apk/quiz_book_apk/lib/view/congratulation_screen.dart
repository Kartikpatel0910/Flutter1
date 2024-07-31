import 'package:flutter/material.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/widgets/common_cong.dart';

class CongPage extends StatefulWidget {
  @override
  State<CongPage> createState() => _CongrationPageState();
}

class _CongrationPageState extends State<CongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(trophyImage,height: 150,width: 150,),
            SizedBox(height: 20),
            Text(
              'Congratulation',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have completed successfully.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RButton(
                  text: '2 correct',
                  color: resultTrue,
                ),
                SizedBox(width: 10),
                RButton(
                  text: '3 Incorrect',
                  color: red,
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('View the result'),
              style: ElevatedButton.styleFrom(
                foregroundColor: purple, backgroundColor: Colors.white,
                minimumSize: Size(300, 50),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {

              },
              child: Text('Start a new quiz'),
              style: OutlinedButton.styleFrom(
                foregroundColor: white, side: BorderSide(color: Colors.white),
                minimumSize: Size(300, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

