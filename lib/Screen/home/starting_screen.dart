import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weighttracker/Screen/addWeight/addWeight.dart';
import 'package:weighttracker/widget/fonts.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "Assets/images/weight.svg",
            width: size.width * 0.7,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Start tracking your weight",
              textAlign: TextAlign.center,
              style: b30_black(),
            ),
          ),
          Container(
            width: size.width * 0.15,
            height: size.width * 0.15,
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
              // borderRadius:
              //     BorderRadius.only(bottomRight: Radius.circular(15)),
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddWeight()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
