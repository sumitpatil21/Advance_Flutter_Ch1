
import 'package:advance_flutter_ch1/Screen/Provider&ChangeThemeusingProvider/Provider/Provider.dart';
import 'package:advance_flutter_ch1/Screen/Provider&ChangeThemeusingProvider/View/Provider_Theme.dart';
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
      create: (context) => ProviderClass(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ProviderClass>(context).IsDark?ThemeMode.light:ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: ProviderTheme(),
      ),
    );
  }
}
