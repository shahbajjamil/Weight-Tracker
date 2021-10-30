import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import 'package:weighttracker/Screen/addWeight/addScreenComponents/oldadd_List.dart';
import 'package:weighttracker/models/weight_Model.dart';
import 'package:weighttracker/provider/provider.dart';
import 'package:weighttracker/widget/color.dart';
import 'package:weighttracker/widget/fonts.dart';
import 'package:weighttracker/widget/helper.dart';

class AddWeight extends StatefulWidget {
  const AddWeight({Key? key}) : super(key: key);

  @override
  _AddWeightState createState() => _AddWeightState();
}

class _AddWeightState extends State<AddWeight> {
  TextEditingController weightTextController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // List<Weight> list = [];
  // // int today = DateTime.;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   list = context.read<DataProvider>().userWeight;
  //   // print(today);
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Consumer<DataProvider>(builder: (context, p, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            title: Text("Add Weight"),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: size.height - size.height * 0.12,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "What is your current weight?",
                              style: b20_black(),
                              textAlign: TextAlign.center,
                            ),
                            TextFormField(
                              style: TextStyle(
                                color: primaryColor,
                              ),
                              cursorColor: primaryColor,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                              ],
                              controller: weightTextController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: bgColor,
                                hintText: 'Weight in KG',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: primaryColor,
                                ),
                                border: textformdesign(),
                                enabledBorder: textformdesign(),
                                focusedBorder: textformdesign(),
                              ),
                              validator: (val) {
                                if (val!.trim().isEmpty) {
                                  return "Please enter weight";
                                } else if (int.parse(val) >= 200 ||
                                    int.parse(val) <= 0) {
                                  return "Please valid input 'eg: 60,75'";
                                }
                              },
                            ),
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: primaryColor),
                                onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    context.read<DataProvider>().addNewWeight(
                                        wt: weightTextController.text);
                                    Navigator.pop(context);
                                  } else {
                                    toastBuild("Please enter weight");
                                  }
                                },
                                icon: FaIcon(FontAwesomeIcons.thumbsUp),
                                label: Text("Submit")),
                          ],
                        )),
                    Oldaddlist()
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  OutlineInputBorder textformdesign() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: primaryColor,
      ),
    );
  }
}
