
import 'package:advance_flutter_ch1/Screen/OneTimeIntoScreen/View/OneTimeScreenView.dart';
import 'package:advance_flutter_ch1/Screen/Open_Hide_Folder/Provider/Open_Hide_Folder_Provider.dart';
import 'package:advance_flutter_ch1/Screen/Open_Hide_Folder/View/Open_Hide_Folder_View.dart';
import 'package:advance_flutter_ch1/Screen/QuotesData/Provider/QuotesProvider.dart';
import 'package:advance_flutter_ch1/Screen/contact_us_page/Provider/contact_us_page_Provider.dart';
import 'package:advance_flutter_ch1/Screen/contact_us_page/View/contact_us_page_View.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyAppCh1());
}
class MyAppCh1 extends StatelessWidget {
  const MyAppCh1({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OpenHideFolderProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
