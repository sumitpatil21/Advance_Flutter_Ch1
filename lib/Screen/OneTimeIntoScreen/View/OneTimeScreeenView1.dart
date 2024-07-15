import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class OnetimescreeenPage1 extends StatelessWidget {
  const OnetimescreeenPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30,top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("Assest/image/11.png"),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Wrap(
              children: [
                Text("Select Template",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been   when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius:BorderRadius.circular(10),
            ),
            child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 28),),),
          )
        ],
      ),
    );
  }
}
