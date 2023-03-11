import 'package:flutter/material.dart';
import 'package:task_management1_2/ui/screens/2_login.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/app_elevated_button_3w.dart';
import 'package:task_management1_2/ui/widgets/app_text_field_widget_2w.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

class VerifyWithEmailScreen extends StatefulWidget {
  const VerifyWithEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyWithEmailScreen> createState() => _VerifyWithEmailScreenState();
}

class _VerifyWithEmailScreenState extends State<VerifyWithEmailScreen> {
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
                "Your Email Address",
                style: screenTitleTextStyle,
              ),
              SizedBox(height: 24,),

              Text(
                "A 6 digit verifaction pin will send to your email address",
                style: TextStyle(fontSize: 14, color: Color(0xff989898)),
              ),
              SizedBox(height: 6,),
              AppTextFieldWidget(
                  hintText: "Email", controller: TextEditingController()),
              SizedBox(height: 6,),
              AppElevatedButton(
                  child: Icon(Icons.arrow_circle_right_outlined), onTap: () {}),
              SizedBox(height: 6,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have account?", style: TextStyle(
                      color: Color(0xff2E374F),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>LoginScreen()));
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
