import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget{

  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTab;

  CoffeeType({
    required this.coffeeType,
    required this.isSelected,
    required this.onTab,

});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(coffeeType,style: TextStyle(
          color: isSelected ? Colors.orange : Colors.white,
          fontSize: 18,fontWeight: FontWeight.bold,),),
      ),
    );
  }



}