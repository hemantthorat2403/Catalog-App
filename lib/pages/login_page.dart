import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Page",style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 215, 69, 24),
          fontWeight: FontWeight.bold,
         ),
         
       ),
      ),
    );
  }
}
