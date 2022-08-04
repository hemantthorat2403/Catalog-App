import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
 

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Raja 07";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name.",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12), fontSize: 34)),
        ),
      ),
    );
  }
}
