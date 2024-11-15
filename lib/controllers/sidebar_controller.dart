import 'dart:async';

import 'package:flutter/material.dart';

class SidebarController extends ChangeNotifier {
  SidebarController({
    int selectedIndex = 0,
    SubViewName selectedSubView = SubViewName.main,
    bool? extended,
  }) : _selectedIndex = selectedIndex {
    _setExtedned(extended ?? true);
  }

  int _selectedIndex;
  SubViewName _selectedSubView = SubViewName.main;
  var _extended = true;

  final _extendedController = StreamController<bool>.broadcast();
  Stream<bool> get extendStream =>
      _extendedController.stream.asBroadcastStream();

  int get selectedIndex => _selectedIndex;
  SubViewName get selectedSubView => _selectedSubView;

  void selectIndex(int val) {
    _selectedIndex = val;
    _selectedSubView = SubViewName.main;
    notifyListeners();
  }

  void selectSubView(SubViewName view) {
    _selectedSubView = view;
    notifyListeners();
  }

  bool get extended => _extended;
  void setExtended(bool extended) {
    _extended = extended;
    _extendedController.add(extended);
    notifyListeners();
  }

  void toggleExtended() {
    _extended = !_extended;
    _extendedController.add(_extended);
    notifyListeners();
  }

  void _setExtedned(bool val) {
    _extended = val;
    notifyListeners();
  }

  @override
  void dispose() {
    _extendedController.close();
    super.dispose();
  }
}

enum SubViewName {
  main,
  detail,
}
