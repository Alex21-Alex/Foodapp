import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class myOTP extends StatelessWidget {
  const myOTP({Key? key}) : super(key: key);

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
                        "OTP",
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
                          child:  OtpTextField(
                            numberOfFields: 5,
                            borderColor: Color(0xFF512DA8),
                            //set to true to show as box or false to show as dash
                            showFieldAsBox: true,
                            //runs when a code is typed in
                            onCodeChanged: (String code) {
                              //handle validation or checks here
                            },
                            //runs when every textfield is filled
                            onSubmit: (String verificationCode){
                            }, // end onSubmit
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
