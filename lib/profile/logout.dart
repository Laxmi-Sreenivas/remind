import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  final VoidCallback submitAction;
  const Logout({super.key, required this.submitAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 5,right: 20,left: 20),
      child: ElevatedButton(
        onPressed: submitAction,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(
          'Log Out',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
