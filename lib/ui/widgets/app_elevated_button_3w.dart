
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const AppElevatedButton({
    super.key, required this.child, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
          width: double.infinity,
          height:40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff21BF73)
              ),
              onPressed: onTap, child: child)),
    );
  }
}


