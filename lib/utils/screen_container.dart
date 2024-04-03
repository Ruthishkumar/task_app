import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  final Widget bodyWidget;
  final Widget? bottomWidget;
  final PreferredSizeWidget? appBarWidget;
  final Color appBackGroundColor;
  const ScreenContainer(
      {super.key,
      required this.bodyWidget,
      this.bottomWidget,
      this.appBarWidget,
      required this.appBackGroundColor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget,
        backgroundColor: appBackGroundColor,
        bottomNavigationBar: bottomWidget,
        body: bodyWidget,
      ),
    );
  }
}
