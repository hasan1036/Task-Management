import 'package:flutter/material.dart';
import 'package:task_management1_2/data/3.1network_utils.dart';
import 'package:task_management1_2/ui/screens/1.2_login.dart';
import 'package:task_management1_2/ui/utils/snackbar_message.dart';
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
  final TextEditingController emailETController = TextEditingController();
  final TextEditingController firstNameETController = TextEditingController();
  final TextEditingController lastNameETController = TextEditingController();
  final TextEditingController mobileETController = TextEditingController();
  final TextEditingController passwordETController = TextEditingController();

 // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackGround(
            child: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "2 Join With us",
                  style: screenTitleTextStyle,
                ),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                    hintText: "Email", controller: emailETController,

                  validator: (value){
                      if(value?.isEmpty ?? true){
                        return "Enter your Email";
                      }
                      return null;
                  },


                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                    hintText: "First name",
                    controller: firstNameETController,

                  validator: (value){
                    if(value?.isEmpty ?? true){
                      return "Enter your First Name";
                    }
                    return null;
                  },

                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                    hintText: "Last name", controller: lastNameETController,

                  validator: (value){
                    if(value?.isEmpty ?? true){
                      return "Enter your last Name";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                    hintText: "Mobile", controller: mobileETController,

                  validator: (value){
                    if(value?.isEmpty ?? true){
                      return "Enter your Last Name";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(

                    hintText: "Password", controller: passwordETController,

                  validator: (value){
                    if((value?.isEmpty ?? true) && ((value?.length?? 0)<6)){
                      return "Enter Password more than 6";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),

                AppElevatedButton(
                    child: Icon(Icons.arrow_circle_right_outlined),
                    onTap: () async {
                      if (_formKey.currentState!.validate()){
                        //final result =  NetworkUtils.postMethod()
                        final result =await NetworkUtils.postMethod('https://task.teamrabbil.com/api/v1/registration', body: {
                          'email' : emailETController.text.trim(),
                          'mobile' : mobileETController.text.trim(),
                          'password' : passwordETController.text,
                          'firstName' : firstNameETController.text.trim(),
                          'lastName' : lastNameETController.text.trim(),
                        }

                        );
                        if(result != null && result['status']=='success'){
                          emailETController.clear();
                          mobileETController.clear();
                          passwordETController.clear();
                          firstNameETController.clear();
                          lastNameETController.clear();

                           showSnackBarMessage(context, "Resistration successfull!");
                        }else{
                          showSnackBarMessage(context, 'Registration failed! Try again', true);
                        }
                      }
                    }),

                const SizedBox(height: 16,),
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
      ),
    )));
  }
}
