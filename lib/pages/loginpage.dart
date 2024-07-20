import 'package:flutter/material.dart';
import 'package:foodlover/components/auth/name.dart';
import 'package:foodlover/components/auth/otp.dart';
import 'package:foodlover/components/auth/phonenumber.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/on_boardingpage1.png'),
            // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 80,
                right: 135,

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    SizedBox(height: 10),
                    Text(
                      "FoodLover",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),),
            PageView(
              controller: pageController,
              children: [
                myPhoneNumber(),
                myOTP(),
                myName(),
              ],
            ),
            Container(
              alignment: Alignment(0, 0.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 310,
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
                    child:
                        buildButtonChild(), // Dynamically update button child
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      dotColor: Color(0xff707070), // Color of inactive dots
                      activeDotColor: Color(0xffF43D2A), // Color of active dot
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
