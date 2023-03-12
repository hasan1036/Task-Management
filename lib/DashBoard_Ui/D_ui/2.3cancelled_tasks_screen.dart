import 'package:flutter/material.dart';

import '../../ui/widgets/screen_back_ground_1w.dart';
import '../D_widgets/task_list_item_2.2w.dart';

class CancelledTasksScreen extends StatefulWidget {
  const CancelledTasksScreen({Key? key}) : super(key: key);

  @override
  State<CancelledTasksScreen> createState() => _CancelledTasksScreenState();
}

class _CancelledTasksScreenState extends State<CancelledTasksScreen> {
  @override
  Widget build(BuildContext context) {



    return  ScreenBackGround(
      child:ListView.builder(
          itemCount: 5,
          itemBuilder: (context, indext){
            return  TaskListItem(
              type: 'Cancelled',
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
