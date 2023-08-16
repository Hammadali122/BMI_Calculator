import 'package:flutter/material.dart';
class RoundiconBotton extends StatelessWidget {
  RoundiconBotton({this.icon,this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      onPressed: onpress,
      elevation: 0.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
          width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
