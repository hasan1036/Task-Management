import 'package:flutter/material.dart';
import 'package:task_management1_2/DashBoard_Ui/D_widgets/user_profile_widget_2.1w.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/app_elevated_button_3w.dart';
import 'package:task_management1_2/ui/widgets/app_text_field_widget_2w.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
            const  UserProfileWidget(),
              Expanded(child: SingleChildScrollView(
                child: ScreenBackGround(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24,),

                        Text("Update Profile", style: screenTitleTextStyle,),

                        SizedBox(height: 28,),

                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration:const BoxDecoration(
                                  color:Colors.grey,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)
                                  )

                                ),
                                child: Text('Photo'),
                              ),

                                Expanded(
                                  child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration:const BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8)
                                    )

                                  ),
                                  child: Text(''),
                              ),
                                ),


                            ],
                          ),
                        ),

                        SizedBox(height: 8,),

                        AppTextFieldWidget(hintText: 'Email', controller: TextEditingController()),

                        SizedBox(height: 16,),
                        AppTextFieldWidget(hintText: 'First Name', controller: TextEditingController()),

                        SizedBox(height: 16,),
                        AppTextFieldWidget(hintText: 'Last Name', controller: TextEditingController()),

                        SizedBox(height: 16,),
                        AppTextFieldWidget(hintText: 'Mobile', controller: TextEditingController()),

                        SizedBox(height: 16,),
                        AppTextFieldWidget(
                            obscureText: true,
                            hintText: 'Password', controller: TextEditingController()),

                        AppElevatedButton(child: Icon(Icons.arrow_circle_right_outlined), onTap: (){}),
                        SizedBox(height: 13,),


                      ],
                    ),
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
