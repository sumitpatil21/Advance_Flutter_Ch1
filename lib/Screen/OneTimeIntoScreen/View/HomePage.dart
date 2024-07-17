
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Center(child: Text("Home Page",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),))
        ],
      ),
    );
  }
}
