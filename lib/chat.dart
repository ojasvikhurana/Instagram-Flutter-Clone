import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Username",
          style: TextStyle(
            color: Colors.black,
          )
        ),
        actions: [
          Icon(
            Icons.add,
            
          )
        ],
      ),
      
    );
  }
}