import 'package:flutter/material.dart';
import 'package:task_management1_2/ui/screens/1.2_login.dart';
import 'package:task_management1_2/ui/screens/1.1_splash_screen.dart';


void main() {
  runApp(const TaskManagement());
}

class TaskManagement extends StatelessWidget {
  const TaskManagement({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:const LoginScreen(),
    );
  }
}
