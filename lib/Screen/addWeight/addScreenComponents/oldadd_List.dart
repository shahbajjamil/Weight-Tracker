import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weighttracker/provider/provider.dart';
import 'package:weighttracker/widget/fonts.dart';

class Oldaddlist extends StatefulWidget {
  const Oldaddlist({
    Key? key,
  }) : super(key: key);

  @override
  State<Oldaddlist> createState() => _OldaddlistState();
}

class _OldaddlistState extends State<Oldaddlist> {
  @override
  Widget build(BuildContext context) {
    final f = new DateFormat(' hh:mm a - dd, MMMM yyyy');

    return Expanded(
      flex: 6,
      child: Consumer<DataProvider>(builder: (context, p, child) {
        return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: p.userWeight.length > 4 ? 4 : p.userWeight.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    context
                        .read<DataProvider>()
                        .addNewWeight(wt: p.userWeight[index].weight);
                    Navigator.pop(context);
                  },
                  title: Text(
                    "Weight: " + p.userWeight[index].weight + " Kg",
                    style: b20_black(),
                  ),
                  subtitle: Text(
                    f.format(p.userWeight[index].date),
                  ),
                  trailing: Text("Tap to use"),
                ),
              );
            });
      }),
    );
  }
}
