import 'package:flutter/material.dart';
import 'package:weighttracker/Screen/home/homeScreen.dart';
import 'package:provider/provider.dart';
import 'package:weighttracker/provider/provider.dart';
import 'package:weighttracker/widget/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weight Tracker',
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor2,
          primaryColor: primaryColor,
          primarySwatch: Palette.myColor,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
