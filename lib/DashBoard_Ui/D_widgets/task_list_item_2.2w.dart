
import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  final String subject, description, date, type;
  final VoidCallback onEditPress, onDeletePress;

  const TaskListItem({
    super.key, required this.subject, required this.description, required this.date, required this.type, required this.onEditPress, required this.onDeletePress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 16
              ),
            ),
            SizedBox(height: 6,),
            Text(description),
            SizedBox(height: 8,),
            Text("Date : ${date}"),
            SizedBox(height: 6,),
            Row(
              children: [
                Chip(
                  label: Text(type),
                  backgroundColor: Color(0xff17C1E8),
                ),
                Spacer(),
                IconButton(onPressed: onEditPress, icon: Icon(Icons.edit)),
                IconButton(
                    onPressed: onDeletePress, icon: Icon(Icons.delete)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

