import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_book_apk/view/chapter_screen.dart';
import 'package:quiz_book_apk/widgets/common_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    final List<Map<String, dynamic>> cardData = [
      {
        "standard": "Standard : 5",
        "subjects": ["English", "Gujrati","Maths", "Social Science", ],
        "images": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROX6sE1fYIMVv3PBLlcYgw5ADa_G4WG_rvSFx57wXbNVsD9WaYOVhP3NUb-eCX18vxuoY&usqp=CAU", 
        "https://i.ytimg.com/vi/aSF2sWuA-6w/maxresdefault.jpg",
        "https://t3.ftcdn.net/jpg/04/61/40/68/240_F_461406849_e3VTquns36ftSqArxMCnwXUSjLH0HoYo.jpg", 
        "https://m.media-amazon.com/images/I/61qrQvRbnqL._AC_UF1000,1000_QL80_.jpg", 
        ]
      },
      {
        "standard": "Standard : 6",
        "subjects": ["Gujarati","English", "Maths","Science","Sanskrit","Social Science" ],
        "images": [
          "https://i0.wp.com/gvbooks.in/wp-content/uploads/2023/09/Gujarati-Text-Book-Std-6-Sem-1-Gcert.jpg?fit=900%2C1600&ssl=1",
          "https://cdn.pixabay.com/photo/2020/09/29/12/56/teaching-5612761_640.jpg", 
          "https://cdn.pixabay.com/photo/2016/11/07/10/15/subjectivity-1805318_640.jpg",
          "https://getmybooks.sgp1.cdn.digitaloceanspaces.com/images/33722906_1.jpg",
          "https://www.saraswatihouse.com//Uploads/BookImages/saraswati-books/9789353620417.jpg",
          "https://www.rachnasagar.in/assets/images/product/big/1682-f-Forever-Social-Science-6-front.jpg"
          ]
      },
      {
        "standard": "Standard : 7",
        "subjects": ["Gujarati","English","Maths", "Sanskrit","Social Science","Science"],
        "images": [
          "https://online.fliphtml5.com/sptcc/mwql/files/shot.jpg",
          "https://orientblackswan.com/bigcovers/9789395308052.jpg", 
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/1/z/6/maths-quest-class-7-old-book-original-imagsfjxg4sdtpzv.jpeg?q=90&crop=false",
          "https://vijetapublishing.com/assets/book/2021030812.jpg",
          "https://www.rachnasagar.in/assets/images/product/big/1683-f-Forever-Social-Science-HB-7-front.jpg",
          "https://rukminim2.flixcart.com/image/850/1000/ktbu6q80/regionalbooks/m/z/a/lakhmir-singh-s-science-class-7-original-imag6zvvndjudvdc.jpeg?q=20&crop=false",
          ]
      },
      {
        "standard": "Standard : 8",
        "subjects": ["Maths","Gujarati" ,"Social Science","Science","Sanskrit","English"],
        "images": [
          "https://lh5.googleusercontent.com/proxy/0KqvPU20vjhtvnb37cVl5DNjOpK_nHZjQW1YqKUc3MKwjkJ1h3k7ZNxTSlgckzSIjD1e5YgvbSc8m1gLOBpBE4wvEOOsebpuHCyplmMoHdPwoiDzrUpWLWYMEOco9qC1MU4y4Zozag", 
          "https://i0.wp.com/gvbooks.in/wp-content/uploads/2023/09/gcert-std-7-gujarati-sem-1.jpeg?fit=438%2C590&ssl=1",
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/book/a/o/w/-original-imagppfjstpftqbd.jpeg?q=90&crop=false",
          "https://rukminim2.flixcart.com/image/850/1000/kxrvi4w0/book/q/l/v/lakhmir-singh-science-8-original-imaga5uj3rbt2qfj.jpeg?q=90&crop=false",
          "https://getmybooks.sgp1.cdn.digitaloceanspaces.com/images/33669192_1.jpg",
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/book/w/4/k/together-with-expressions-english-mcb-class-8-original-imagzgf8vzvggpzg.jpeg?q=90&crop=false",
          ]
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Standards",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: cardData.length,
        itemBuilder: (BuildContext context, int index) {
          final item = cardData[index];
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item["standard"],
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            "New",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(item["subjects"].length, (subIndex) {
                          return Container(
                            width: 130,
                            padding: const EdgeInsets.all(4.0),
                            child: CommonCard(
                              imgUrl: item["images"][subIndex],
                              title: item["subjects"][subIndex],
                              onTap: () {
                                Get.to(()=>ChapterScreen());
                              },
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}