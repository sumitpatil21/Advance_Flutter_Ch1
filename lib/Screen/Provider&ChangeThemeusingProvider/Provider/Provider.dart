import 'dart:ffi';

import 'package:flutter/material.dart';

class ProviderClass extends ChangeNotifier
{
  bool IsDark=true;
  void ThemeChange()
  {
    IsDark=!IsDark;
    notifyListeners();

  }
}