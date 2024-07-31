import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_book_apk/utils/constant.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Activity'),
        centerTitle: true,
      ),
     body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: EdgeInsetsDirectional.symmetric(vertical: 5),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('STD : 5'),
                  Text('English Chapter: 1 The Little Bee Die in one hand to the ',maxLines: 1,overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined,
                      size: 16,
                      ),
                      SizedBox(width: 4,),
                      Text('Just Now'),

                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: InkWell(
                      onTap: (){},
                      child: Text('Done',
                      style: TextStyle(
                        color: purple,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  )
                ],
            ),
            trailing: CircularPercentIndicator(
              radius: 28,
              lineWidth: 5,
              percent: 0.5,
              center: Text('50%'),
              progressColor: purple,
              
              ),
      ),
        );},
    )));
  }
}
