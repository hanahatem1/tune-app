import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class tuneItem extends StatelessWidget{
    const tuneItem({super.key,required this.tune});
     final tuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          tune.playSound();
        },
        child: Container(
         color: tune.color,
        ),
      ),
    );
  }
}