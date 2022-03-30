import 'package:flutter/foundation.dart';
import 'package:workout/modelClass.dart';
import 'package:workout/servicefile.dart';

class DataClass extends ChangeNotifier {
  ModelClass? post;
  bool loading = false;

  getallData() async {
    loading = true;
    post = await getData();
    loading = false;
    notifyListeners();
  }
}
