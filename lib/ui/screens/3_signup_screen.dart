import 'package:flutter/material.dart';
import 'package:task_management1_2/ui/screens/2_login.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/app_elevated_button_3w.dart';
import 'package:task_management1_2/ui/widgets/app_text_field_widget_2w.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackGround(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(34.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40,),
                    Text("2 Join With us", style: screenTitleTextStyle,),
                    const SizedBox(height: 24,),
                    AppTextFieldWidget(hintText: "Email", controller: TextEditingController()),

                    const SizedBox(height: 8,),
                    AppTextFieldWidget(hintText: "First name", controller: TextEditingController()),

                    const SizedBox(height: 8,),
                    AppTextFieldWidget(hintText: "Last name", controller: TextEditingController()),

                     const SizedBox(height: 8,),
                    AppTextFieldWidget(hintText: "Movile", controller: TextEditingController()),

                     const SizedBox(height: 8,),
                    AppTextFieldWidget(hintText: "Password", controller: TextEditingController()),
                    AppElevatedButton(child: Icon(Icons.arrow_circle_right_outlined), onTap: (){}),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("Have account?", style: TextStyle(
                            color: Color(0xff2E374F),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
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
          ))
    );
  }
}
