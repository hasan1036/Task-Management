import 'package:flutter/material.dart';
import 'package:task_management1_2/ui/widgets/screen_back_ground_1w.dart';

import '../D_widgets/dashbord_item_2.3w.dart';
import '../D_widgets/task_list_item_2.2w.dart';

class NewTasksScreen extends StatefulWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  State<NewTasksScreen> createState() => _NewTasksScreenState();
}

class _NewTasksScreenState extends State<NewTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackGround(
        child: Column(
      children: [
        Row(
          children: const [
            Expanded(
                child: DashboardItem(
              numberOfTask: 13,
              typeOfTask: 'New',
            )),
            Expanded(
                child: DashboardItem(
              numberOfTask: 14,
              typeOfTask: 'Completed',
            )),
            Expanded(
                child: DashboardItem(
              numberOfTask: 15,
              typeOfTask: 'Cancelled',
            )),
            Expanded(
                child: DashboardItem(
              numberOfTask: 16,
              typeOfTask: 'In Progress',
            )),
          ],
        ),


        Expanded(
          child:ListView.builder(
              itemCount: 5,
              itemBuilder: (context, indext){
            return  TaskListItem(
              type: 'Title Here',
              date: '12/3/2023',
              description: 'Descriptions Here Descriptions Here Descriptions Here Descriptions Here',
              subject: 'Title Here',
              onEditPress: () {  },
              onDeletePress: () {  },

            );
          }
          ),
        ),


      ],
    ));
  }
}





///  DeshBoardItem    Start



///  DeshBoardItem End
