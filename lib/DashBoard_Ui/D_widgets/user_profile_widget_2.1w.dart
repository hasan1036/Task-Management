
import 'package:flutter/material.dart';
import 'package:task_management1_2/DashBoard_Ui/D_ui/2.6update_profile_screen.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfileScreen()));
      },

      contentPadding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 0
      ),
      leading: CircleAvatar(child: Icon(Icons.person)),
      tileColor: Colors.green,
      title: Text("Rabbil Hasan"),
      subtitle: Text("rabbil@gmail.com"),
    );
  }
}
