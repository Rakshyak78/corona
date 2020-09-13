import 'package:flutter/material.dart';

class CoronaCard extends StatelessWidget {

 final String label;
  final int value;
  CoronaCard({this.label,this.value});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),),
          Text(value.toString(),style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500)),

        ],


      ),
    );

  }
}
