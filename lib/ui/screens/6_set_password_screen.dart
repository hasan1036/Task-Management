import 'package:flutter/material.dart';

import '../utils/text_styles.dart';
import '../widgets/app_elevated_button_3w.dart';
import '../widgets/app_text_field_widget_2w.dart';
import '../widgets/screen_back_ground_1w.dart';
import '2_login.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ScreenBackGround(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  Text(
                    "6SetPassword",
                    style: screenTitleTextStyle,
                  ),
                  SizedBox(height: 8,),

                  Text(
                    "Minimum length password 8 character with Latter and number combination ",
                    style: screenSubTitleStyle,
                  ),
                  SizedBox(height: 16),

                  AppTextFieldWidget(
                    obscureText: true,
                      hintText: "Password", controller: TextEditingController()),

                  SizedBox( height: 6),

                  AppTextFieldWidget(
                    obscureText: true,
                      hintText: "Confirm Password", controller: TextEditingController()),

                  SizedBox( height: 6),

                  AppElevatedButton(
                      child: Text("Confirm"),
                      onTap: () {
                       //  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerificationScreen()));
                      }
                  ),


                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have account?",
                        style: TextStyle(
                            color: Color(0xff2E374F),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),


                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Color(0xff21BF73),
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          )),

                    ],
                  ),



                ],
              ),
            ),
          )),


    );
  }
}
