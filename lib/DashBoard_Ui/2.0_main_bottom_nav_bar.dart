import 'package:flutter/material.dart';
import 'package:task_management1_2/DashBoard_Ui/D_ui/2.1new_tasks_screen.dart';
import 'package:task_management1_2/DashBoard_Ui/D_ui/2.2completed_tasks_screen.dart';
import 'package:task_management1_2/DashBoard_Ui/D_ui/2.3cancelled_tasks_screen.dart';
import 'package:task_management1_2/DashBoard_Ui/D_ui/2.4inprogress_tasks_screen.dart';
import 'package:task_management1_2/DashBoard_Ui/D_ui/2.5add_new_task_screen.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

import 'D_widgets/user_profile_widget_2.1w.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectedScreen = 0;
  final List<Widget> _screens = const [
    NewTasksScreen(),
    CompletedTasksScreen(),
    CancelledTasksScreen(),
    InProgressTasksScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
        },
        backgroundColor: Color(0xff21BF73),
        child:Icon(Icons.add),),

      
      body: SafeArea(
        child: Column(
          children: [
            UserProfileWidget(),
            Expanded(child: _screens[_selectedScreen]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (index){
          _selectedScreen = index;
          setState(() {});
        },
        currentIndex: _selectedScreen,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.new_label_outlined), label:'New'),

          BottomNavigationBarItem(icon: Icon(Icons.done_outline), label: "Compedted"),

          BottomNavigationBarItem(icon: Icon(Icons.close_outlined), label: "Cancelled"),

          BottomNavigationBarItem(icon: Icon(Icons.propane_outlined), label: "Progress"),


        ],
      ),

    );
  }
}
