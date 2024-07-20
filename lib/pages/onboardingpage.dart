import 'package:flutter/material.dart';
import 'package:foodlover/components/onboarding/on_boardingpage1.dart';
import 'package:foodlover/components/onboarding/on_boardingpage2.dart';
import 'package:foodlover/components/onboarding/on_boardingpage3.dart';
import 'package:foodlover/pages/loginpage.dart';
import 'package:foodlover/pages/logopage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    if (currentPageIndex < 2) {
      // Assuming you have 3 pages (indexes 0, 1, 2)
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    } else {
      // Navigate to home page when on the last page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    }
  }

  Widget buildButtonChild() {
    if (currentPageIndex < 2) {
      return Icon(Icons.arrow_forward_sharp);
    } else {
      return Text('START NOW');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              OnBoardingPage1(),
              OnBoardingPage2(),
              OnBoardingPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 650,
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: WormEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    dotColor: Color(0xff707070),      // Color of inactive dots
                    activeDotColor: Color(0xffF43D2A),  // Color of active dot
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF43D2A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(50, 65),
                  ),
                  onPressed: nextPage,
                  child: buildButtonChild(), // Dynamically update button child
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
