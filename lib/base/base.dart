import 'package:flutter/foundation.dart';

class Base with ChangeNotifier {
  bool _hasdata = false;
  bool _success = false;

  bool get hasdata => _hasdata;

  setNhasdata(bool hasdata, [bool success = true]) {
    _hasdata = hasdata;
    _success = success;
    notifyListeners();
  }

  bool get success => _success;
  setQhasdata(bool hasdata, [bool success = true]) {
    _hasdata = hasdata;
    _success = success;
  }
}
