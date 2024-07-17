import 'package:advance_flutter_ch1/Screen/OneTimeIntoScreen/View/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
PageController controller=PageController();
class OnetimescreenPage extends StatelessWidget {
  const OnetimescreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         PageView(
           controller: controller,
           children: [
             PageCreat(img: "Assest/image/12.png",col: Colors.orange,title: Text("Select img")),
             PageCreat(img: "Assest/image/11.png",col: Colors.black,title: Text("Slect img"),),
             PageCreat(img: "Assest/image/13.png",col: Colors.blue,title: Text("Selct img"),)
           ],
         ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30,left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    controller.animateToPage(2, duration:Duration(seconds: 1), curve: Curves.easeInOut);

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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget PageCreat({required String img, required Text title, required Color col})
{
  return Column(
    children: [

      Container(
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(
          color: col,
          image: DecorationImage(
            image: AssetImage(img),),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
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
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(28.0),
        child: Wrap(
          children: [

            Text(title.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been   when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ],
        ),
      ),

    ],
  );
}