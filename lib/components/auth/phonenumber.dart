import 'package:flutter/material.dart';

class myPhoneNumber extends StatelessWidget {
  const myPhoneNumber({Key? key}) : super(key: key);

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
                        "Mobile Phone",
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
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color:Colors.white, // Example color for Algerian flag
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/algeria.png',width: 40,height: 40,)
                          ),
                        ),
                        SizedBox(width: 10),
                        // TextField for entering phone number
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter your phone number',
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
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
