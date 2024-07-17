import 'package:advance_flutter_ch1/Screen/contact_us_page/Provider/contact_us_page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactUsPageProvider contactUsPageProvider=Provider.of<ContactUsPageProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contect Us",
          style: TextStyle(fontSize: 30),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 25,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Wrap(
              children: [
                Text(
                    "If you have any queries, get in touch with us. we will be happy to help you!",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),
              ],
            ),
          ),
          SizedBox(height: 80,),
          InkWell(
            onTap: () {
              contactUsPageProvider.phone();

            },
            child: Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.phone_android,size: 30,color: Colors.blue,), Text("+91 9316925877",style: TextStyle(color: Colors.black,fontSize: 20),)],
              ),
            ),
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: () {
              contactUsPageProvider.Mail();
            },
            child: Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.mail_outline,size: 30,color: Colors.blue,), Text(" sumit2@gmail.com",style: TextStyle(color: Colors.black,fontSize: 20),)],
              ),
            ),
          ),

          SizedBox(height: 100,),

          Container(
            height: 80,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue.shade100,
                width: 3,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text("Social Media ",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.w800),)],
            ),
          ),
          InkWell(
            onTap: () {
              contactUsPageProvider.github();
            },
            child: Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                  width: 3,
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text("Github",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),)],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              contactUsPageProvider.instagram();
            },
            child: Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                  width: 3,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text("Instagram",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),)],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              contactUsPageProvider.sms();
            },
            child: Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                  width: 3,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text("Sms",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),)],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
