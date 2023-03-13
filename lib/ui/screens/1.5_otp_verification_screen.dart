import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management1_2/ui/screens/1.6_set_password_screen.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

import '../widgets/app_elevated_button_3w.dart';
import '../widgets/app_text_field_widget_2w.dart';
import '1.2_login.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackGround(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5 Pin Verification",
                  style: screenTitleTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),

                Text(
                  "A 6 digit verifaction pin will send to your email address",
                  style: screenSubTitleStyle,
                ),
                SizedBox(
                  height: 16,
                ),



                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.grey,
                    selectedColor: Colors.green,
                    // inactiveColor: Colors.white
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
                const SizedBox(
                  height: 16,
                ),





                AppElevatedButton(
                    child: Text("Verify", style: TextStyle(fontSize: 16),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
                    }
                ),


                SizedBox(
                  height: 16,
                ),

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
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
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
        ),
      ),
    );
  }
}
