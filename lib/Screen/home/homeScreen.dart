import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weighttracker/Screen/addWeight/addWeight.dart';
import 'package:weighttracker/Screen/home/homeComponents/home_card.dart';
import 'package:weighttracker/Screen/home/homeComponents/list_builder.dart';
import 'package:weighttracker/Screen/home/starting_screen.dart';
import 'package:weighttracker/provider/provider.dart';
import 'package:weighttracker/widget/fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Consumer<DataProvider>(builder: (context, p, child) {
      return Scaffold(
        body: p.userWeight.length == 0
            ? StartingScreen()
            : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HomeCard(),
                Container(
                  child: Text(
                    "Your Records",
                    style: b15_black(),
                  ),
                ),
                ListbuilderPart(),
              ],
            ),
      );
    }));
  }
}
