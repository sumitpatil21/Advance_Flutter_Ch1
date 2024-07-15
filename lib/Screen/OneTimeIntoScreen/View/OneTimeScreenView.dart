import 'package:advance_flutter_ch1/Screen/OneTimeIntoScreen/View/OneTimeScreeenView1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class OnetimescreenPage extends StatelessWidget {
  const OnetimescreenPage({super.key});

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
                  image: AssetImage("Assest/image/12.png"),),
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnetimescreeenPage1(),));
            },
            child: Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius:BorderRadius.circular(10),
              ),
              child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 28),),),
            ),
          )
        ],
      ),
    );
  }
}
