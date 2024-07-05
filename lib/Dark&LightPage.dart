import 'package:flutter/material.dart';

class Darklightpage extends StatefulWidget {
  const Darklightpage({super.key});

  @override
  State<Darklightpage> createState() => _DarklightpageState();
}

class _DarklightpageState extends State<Darklightpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDark ? ThemeMode.light : ThemeMode.dark,
      home: Scaffold(
        body: Center(
            // child: Container(
            //   height: height * 0.74,
            //   width: width,
            //   margin: const EdgeInsets.all(18),
            //   decoration: BoxDecoration(
            //     boxShadow: _isDark
            //         ? [
            //       const BoxShadow(
            //         color: Colors.grey,
            //         blurRadius: 11,
            //       ),
            //     ]
            //         : null,
            //     borderRadius: BorderRadius.circular(12),
            //     color: _isDark ? Colors.white : Colors.white12,
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         'Yo Man!',
            //         style: TextStyle(
            //             fontSize: width * 0.091, fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(height: height * 0.012),
            //       Text(
            //         textAlign: TextAlign.center,
            //         _isDark
            //             ? "It's simple example of\nlight theme"
            //             : "It's simple example of\ndark theme",
            //         style:
            //         TextStyle(fontSize: width * 0.05, color: Colors.grey),
            //       ),
            //       SizedBox(
            //         height: height * 0.12,
            //       ),
            //       GestureDetector(
            //         onTap: () {
            //           setState(() {
            //             _isDark = true;
            //           });
            //         },
            //         child: Container(
            //           height: height * 0.09,
            //           width: width,
            //           alignment: Alignment.center,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 20, vertical: 13),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(12),
            //               color: Colors.amber),
            //           child: Text(
            //             'Light Theme',
            //             style: TextStyle(
            //                 color: _isDark ? Colors.black87 : Colors.white,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: width * 0.05),
            //           ),
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () {
            //           setState(() {
            //             _isDark = false;
            //           });
            //         },
            //         child: Container(
            //           height: height * 0.09,
            //           width: width,
            //           alignment: Alignment.center,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 20, vertical: 13),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(12),
            //               color: Colors.red),
            //           child: Text(
            //             'Dark Theme',
            //             style: TextStyle(
            //                 color: _isDark ? Colors.black87 : Colors.white,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: width * 0.05),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            ),
      ),
    );
  }
}

bool _isDark = false;
