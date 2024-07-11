
import 'package:advance_flutter_ch1/Screen/QuotesData/Provider/QuotesProvider.dart';
import 'package:advance_flutter_ch1/Screen/QuotesData/View/QuotesDataView.dart';
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
      create: (context) => QuotesProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Quotesdataview(),
      ),
    );
  }
}
