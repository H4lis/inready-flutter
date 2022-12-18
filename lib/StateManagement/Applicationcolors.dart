import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _islightBlue = true;
  bool get islightBlue => _islightBlue;

  set islightBlue(bool value) {
    _islightBlue = value;
    notifyListeners();
  }

  get Color => (_islightBlue) ? Colors.lightBlue : Colors.amber;
}
