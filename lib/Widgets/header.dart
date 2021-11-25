import 'package:flutter/material.dart';
import 'package:masters_gst/Utilities/Colors.dart';

class Header extends StatelessWidget {
  final Widget child;
  const Header(this.child, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: child,
    );
  }
}
