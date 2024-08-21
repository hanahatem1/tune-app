import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class tuneScreen extends StatelessWidget{
  const tuneScreen ({super.key});

  final List<tuneModel> tunes = const [
   tuneModel(color: Colors.red, sound: "note1.wav") ,
    tuneModel(color: Colors.orange, sound: "note2.wav"),
    tuneModel(color: Colors.yellow, sound: "note3.wav"),
   tuneModel(color: Colors.green, sound: "note4.wav") ,
    tuneModel(color: Colors.teal, sound: "note5.wav"),
    tuneModel(color: Colors.blue, sound: "note6.wav"),
    tuneModel(color: Colors.purple, sound: "note7.wav"),

  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter Tune"),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body:Column(
        children: tunes.map((e) => tuneItem(tune: e)).toList(),
      )
    );
  }
 /*  List<tuneItem> getTuneItem(){
      List<tuneItem> items =[];

    for(var color in tuneColors){
      items.add(tuneItem(color: color));
    }
    return items;
  }

  */
}