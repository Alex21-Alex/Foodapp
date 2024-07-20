import 'package:flutter/material.dart';

class myName extends StatelessWidget {
  const myName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Content: Title, Description, Next Button
          Positioned(
            bottom: 220,
            top: 250,
            right: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F4F4), // Semi-transparent white
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(40),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8,),
                      // Title
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 30),
                      // Description
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff707070),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 140),

                      // TextField for entering phone number
                    ],
                  ),
                  // TextField for entering phone number

                  Positioned(
                    top:10 ,
                    bottom:00 ,
                    right: 0,
                    left: 0,
                    child: Row(
                      children: [
                        // TextField for entering phone number
                        Expanded(
                          child: Container(
                            height: 50,
                            width: double.infinity, // Use double.infinity to expand to available width
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter your name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0,  // Adjust vertical padding
                                  horizontal: 12.0, // Adjust horizontal padding
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 14,  // Adjust font size
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
