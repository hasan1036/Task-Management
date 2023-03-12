
import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final int numberOfTask;
  final String typeOfTask;
  const DashboardItem({
    super.key,
    required this.numberOfTask,
    required this.typeOfTask,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              numberOfTask.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            FittedBox(child: Text(typeOfTask)),
          ],
        ),
      ),
    );
  }
}


