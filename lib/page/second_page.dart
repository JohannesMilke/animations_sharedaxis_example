import 'package:animations_sharedaxis_example/widget/card_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: 200,
          child: CardWidget(index: index),
        ),
      );
}
