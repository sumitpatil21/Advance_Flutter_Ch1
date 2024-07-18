import 'package:advance_flutter_ch1/Screen/Open_Hide_Folder/View/Open_Hide_Folder_View.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class HideFolderPage extends StatelessWidget {
  const HideFolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hide Folder'),
      ),
      body: Center(
        child: Column(
          children: [
            Wrap(
              children: [
                ...List.generate(HideImage.length,(index) => Container(
                  height: 119,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(image: AssetImage(HideImage[index],),fit: BoxFit.cover),

                  ),
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
