import 'package:advance_flutter_ch1/Dark&LightPage.dart';
import 'package:advance_flutter_ch1/Stepper_Widget/StepperPage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyAppCh1());
}
class MyAppCh1 extends StatelessWidget {
  const MyAppCh1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stepperpage(),
    );
  }
}
