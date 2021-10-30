import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weighttracker/Screen/addWeight/addWeight.dart';
import 'package:weighttracker/provider/provider.dart';
import 'package:weighttracker/widget/fonts.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<DataProvider>(builder: (context, p, child) {
      return Expanded(
        flex: 3,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          // color: Color(0xff7555f7),
          child: Stack(
            // fit: StackFit.expand,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  color: Color(0xff7555f7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Average Weight",
                        style: n20_white(),
                      ),
                      Text(
                        p.total.toInt().toString() + " kg",
                        style: b30_white(),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    // shape: BoxShape.circle,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15)),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddWeight()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
