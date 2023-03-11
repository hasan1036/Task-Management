import 'package:flutter/material.dart';
import 'package:task_management1_2/ui/screens/4_verify_with_email_screen.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

import '../widgets/app_elevated_button_3w.dart';
import '../widgets/app_text_field_widget_2w.dart';
import '3_signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackGround(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2 Get Started With",
                style: screenTitleTextStyle,
              ),
              SizedBox(
                height: 24,
              ),
              AppTextFieldWidget(
                  hintText: 'Enter Your Email',
                  controller: TextEditingController()),
              SizedBox(
                height: 16,
              ),
              AppTextFieldWidget(
                  obscureText: true,
                  hintText: "Enter Your Passwed",
                  controller: TextEditingController()),
              SizedBox(
                height: 16,
              ),
              AppElevatedButton(
                onTap: () {},
                child: const Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyWithEmailScreen()));
                    },
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Color(0xff5F5F5F), fontSize: 12),
                    )),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account?", style: TextStyle(
                      color: Color(0xff2E374F),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      child: Text(
                        "Sign up",
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
    );
  }
}
