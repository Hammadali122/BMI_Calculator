import 'package:flutter/material.dart';
import 'constant_card.dart';

class Iconcontant extends StatelessWidget {
  Iconcontant({@ required this.textchild,this.contanticon,});
  final String textchild;
  final IconData contanticon;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon( contanticon,
          size: 80,
        ),
        SizedBox(height: 15,),
        Text(textchild,
            style: KLabletextstyle)
      ],
    );
  }
}