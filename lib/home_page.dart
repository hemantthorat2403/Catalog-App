import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Raja 07";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ), 
      body: Center(
        child: Container(
          child: Text("welcome to $days days of flutter by $name.",
              style:
                  TextStyle(color: Color.fromARGB(255, 243, 4, 4), fontSize: 34)),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
