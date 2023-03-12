import 'package:flutter/material.dart';

import '../../ui/widgets/screen_back_ground_1w.dart';
import '../D_widgets/task_list_item_2.2w.dart';

class CompletedTasksScreen extends StatefulWidget {
  const CompletedTasksScreen({Key? key}) : super(key: key);

  @override
  State<CompletedTasksScreen> createState() => _CompletedTasksScreenState();
}

class _CompletedTasksScreenState extends State<CompletedTasksScreen> {
  @override
  Widget build(BuildContext context) {


    return  ScreenBackGround(
        child:ListView.builder(
            itemCount: 5,
            itemBuilder: (context, indext){
              return  TaskListItem(
                type: 'Completed',
                date: '12/3/2023',
                description: 'Descriptions Here Descriptions Here Descriptions Here Descriptions Here',
                subject: 'Title Here',
                onEditPress: () {  },
                onDeletePress: () {  },
              );
            }
        ) ,
    );


  }
}
