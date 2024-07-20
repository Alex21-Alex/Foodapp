import 'package:flutter/material.dart';

class MyOnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onNextPressed;

  const MyOnboardingPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            imagePath,
            width: 375,
            height: 500,
            fit: BoxFit.cover,
          ),
        ),
        // Content: Title, Description, Next Button
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),

                // Description
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff707070),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),

                // Next Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF43D2A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(50, 65),
                  ),
                  onPressed: onNextPressed,
                  child: Icon(Icons.arrow_forward_sharp),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
