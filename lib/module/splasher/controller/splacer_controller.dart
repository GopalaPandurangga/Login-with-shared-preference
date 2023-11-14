import 'package:flutter/material.dart';
import 'package:slicing_ui2_login/core.dart';
import '../view/splasher_view.dart';

class SplacerController extends State<SplasherView> {
  static late SplacerController instance;
  late SplasherView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
