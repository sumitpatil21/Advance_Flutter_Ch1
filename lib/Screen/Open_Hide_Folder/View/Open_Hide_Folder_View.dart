import 'package:advance_flutter_ch1/Screen/Open_Hide_Folder/Provider/Open_Hide_Folder_Provider.dart';
import 'package:advance_flutter_ch1/Screen/Open_Hide_Folder/View/Hide_Folder_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    OpenHideFolderProvider openHideFolderProvider =
        Provider.of<OpenHideFolderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gallery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PopupMenuButton<SampleItem>(
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Text('Select'),
                  ),
                  PopupMenuItem<SampleItem>(
                    onTap: () {
                      openHideFolderProvider.Navset(context);
                    },
                    value: SampleItem.itemTwo,
                    child: Text('Hide Folder'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemThree,
                    child: Text('Move'),
                  ),
                ],
              ),
            ],
          ),
          Wrap(
            children: [
              ...List.generate(ListOfImage.length,(index) => Container(
                height: 119,
                width: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage(ListOfImage[index],),fit: BoxFit.cover),

                ),
              ),),
            ],
          )
        ],
      ),
    );
  }
}

List ListOfImage = [
  "Assest/image/1.jpg",
  "Assest/image/2.jpg",
  "Assest/image/3.jpg",
  "Assest/image/4.jpg",
  "Assest/image/5.jpg",
  "Assest/image/6.jpg",
  "Assest/image/7.jpg",
  "Assest/image/8.jpg",
  "Assest/image/9.jpg",
  "Assest/image/10.jpg",
  "Assest/image/11.jpg",
  "Assest/image/12.jpg",
  "Assest/image/13.jpg",
  "Assest/image/14.jpg",
];
List HideImage = [
  "Assest/image/15.jpg",
  "Assest/image/16.jpg",
  "Assest/image/17.jpg",
  "Assest/image/18.jpg",
  "Assest/image/19.jpg",
  "Assest/image/20.png",
  "Assest/image/21.png",
  "Assest/image/22.png",
  "Assest/image/23.jpg",
  "Assest/image/24.jpg",
];

enum SampleItem { itemOne, itemTwo, itemThree }
