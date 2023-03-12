import 'package:flutter/material.dart';
import 'package:task_management1_2/DashBoard_Ui/D_widgets/user_profile_widget_2.1w.dart';
import 'package:task_management1_2/ui/utils/text_styles.dart';
import 'package:task_management1_2/ui/widgets/app_elevated_button_3w.dart';
import 'package:task_management1_2/ui/widgets/app_text_field_widget_2w.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 24,),
                       Text("Add New Task", style: screenTitleTextStyle,),

                        SizedBox(height: 24,),
                        AppTextFieldWidget(hintText: 'Subject', controller: TextEditingController()),

                        SizedBox(height: 13,),
                        AppTextFieldWidget(
                            maxLine: 5,
                            hintText: 'Descriptions', controller: TextEditingController()),
                        SizedBox(height: 13,),
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
