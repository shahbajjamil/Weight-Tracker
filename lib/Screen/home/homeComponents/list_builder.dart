import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weighttracker/provider/provider.dart';
import 'package:weighttracker/widget/fonts.dart';

class ListbuilderPart extends StatelessWidget {
  const ListbuilderPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final f = new DateFormat(' hh:mm a - dd, MMMM yyyy');
    Size size = MediaQuery.of(context).size;
    return Consumer<DataProvider>(builder: (context, p, child) {
      return Expanded(
        flex: 7,
        child: Container(
          width: size.width,
          margin: EdgeInsets.symmetric(horizontal: 10),

          // height: size.height * 0.7,
          // color: Colors.pink,
          child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: p.userWeight.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      "Weight: " + p.userWeight[index].weight + " Kg",
                      style: b20_black(),
                    ),
                    subtitle: Text(f.format(p.userWeight[index].date)),
                  ),
                );
              }),
        ),
      );
    });
  }
}
