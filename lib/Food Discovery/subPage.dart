
import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {

   String Title="";

  subPage(String sTitle){
    Title=sTitle;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          Title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          }, child: const Text(
          'Back to Home'
        ),
        )
      )
    );
  }
}

