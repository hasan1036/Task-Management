import 'package:flutter/material.dart';
import 'package:task_management1_2/DashBoard_Ui/2.0_main_bottom_nav_bar.dart';
import 'package:task_management1_2/data/3.1network_utils.dart';
import 'package:task_management1_2/data/3.2urls.dart';
import 'package:task_management1_2/ui/screens/1.4_verify_with_email_screen.dart';
import 'package:task_management1_2/ui/utils/snackbar_message.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

import '../widgets/app_elevated_button_3w.dart';
import '../widgets/app_text_field_widget_2w.dart';
import '1.3_signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _inProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackGround(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
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
                  controller: _emailETController,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Enter your valid Email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                AppTextFieldWidget(
                  obscureText: true,
                  hintText: "Enter Your Passwed",
                  controller: _passwordETController,
                  validator: (value) {
                    if ((value?.isEmpty ?? true) &&
                        ((value?.length ?? 0) < 6)) {
                      return "Enter Password more than 6";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                if (_inProgress)
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  )
                else
                  AppElevatedButton(
                  onTap: ()async {
                    if(_formKey.currentState!.validate()){
                      _inProgress = true;
                      setState(() {

                      });

                      final result = await NetworkUtils.postMethod(Urls.loginUrl,
                      body: {
                        'email': _emailETController.text.trim(),
                        'password' : _passwordETController.text.trim(),
                      },
                        onUnAuthorize: (){
                        showSnackBarMessage(context, 'Username or password incorrect', true);
                        }
                      );
                      _inProgress = false;
                      setState(() {

                      });

                      if(result != null && result['status'] == 'success'){

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainBottomNavBar()),
                        (route) => false);
                      }

                    }
                  },
                  child: const Icon(Icons.arrow_circle_right_outlined),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyWithEmailScreen()));
                      },
                      child: const Text(
                        "Forgot Password ?",
                        style:
                            TextStyle(color: Color(0xff5F5F5F), fontSize: 12),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style: TextStyle(
                          color: Color(0xff2E374F),
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    TextButtonWidget(
                      textButton: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      text: 'SignUp',
                    ),
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

class TextButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback textButton;
  const TextButtonWidget({
    super.key,
    required this.textButton,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: textButton,
      //
      // onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));},

      child: Text(
        text,
        style: TextStyle(
            color: Color(0xff21BF73),
            fontWeight: FontWeight.w600,
            fontSize: 12),
      ),
    );
  }
}
