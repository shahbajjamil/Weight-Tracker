import 'package:flutter/material.dart';
import 'package:weighttracker/models/weight_Model.dart';

class DataProvider extends ChangeNotifier {
  List<Weight> userWeight = [];
  double total = 0;
  int avg = 0;

  addNewWeight({required String wt}) {
    Weight newWeight = Weight(
      weight: wt,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    userWeight.insert(0, newWeight);
    avg = avg + int.parse(userWeight[0].weight);
    addAVG(avg);
    notifyListeners();
  }
  // for(int i=0;i<userWeight.lenght;i++){

  // }
  addAVG(avg) {
    total = avg / userWeight.length;
    notifyListeners();
  }

  // notifyListeners();
}
