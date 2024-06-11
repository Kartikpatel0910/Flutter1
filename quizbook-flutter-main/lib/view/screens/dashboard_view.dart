import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/controller/dashboard_controller.dart';
import 'package:rudra_it_hub/splash_screen.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/view/screens/history_view.dart';
import 'package:rudra_it_hub/view/screens/signup_view.dart';
import 'package:rudra_it_hub/view/screens/std_screen.dart';

class AppbarBottomBarScreen extends StatefulWidget {
  @override
  _AppbarBottomBarScreenState createState() => _AppbarBottomBarScreenState();
}

class _AppbarBottomBarScreenState extends State<AppbarBottomBarScreen>
    with AutomaticKeepAliveClientMixin {

   AppbarBottomBarController _controller =
      Get.put(AppbarBottomBarController());
@override
  void initState() {
    _controller.pageController = PageController(initialPage: 0);
    _controller.currentIndex.value =0;
    print(_controller.currentIndex.value );
    super.initState();
  }
  @override
  bool get wantKeepAlive => true;
  

  @override
  Widget build(BuildContext context) {
    super.build(context); // This is important.

    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller.pageController,
          onPageChanged: (index) {
            _controller.onTabTapped(index);
          },
          itemBuilder: (_, index) {
            if (index == 0) {
              return const StudyScreen();
            } else if (index == 1) {
              return const History();
            } else{
              return SignUpScreen(
                firstName: userData?.data.firstName ?? '',
                isProfile: true,
                lastName: userData?.data.lastName ?? '',
                email: userData?.data.email ?? '',
                mobileNo: userData?.data.mobileNumber ?? '',
                gender: userData?.data.gender[0].name ?? "",
                desi: userData?.data.profession[0].name ?? "",
                date: userData?.data.dob ?? "",
              );}
          }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: purpleColor,
          showSelectedLabels: true,
          iconSize: getScreenHeight(context) * 0.050,
          currentIndex: _controller.currentIndex.value ,
          onTap: _controller.onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.watch_later_outlined,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
