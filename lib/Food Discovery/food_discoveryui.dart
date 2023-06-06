import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/Food Discovery/food_discoveryui.dart';
import 'package:flutter_ui_design/Food%20Discovery/subPage.dart';

class Food_DiscoveryUi extends StatefulWidget {
  const Food_DiscoveryUi({Key? key}) : super(key: key);

  @override
  State<Food_DiscoveryUi> createState() => _Food_DiscoveryUiState();
}

class _Food_DiscoveryUiState extends State<Food_DiscoveryUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Discovery",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        // automaticallyImplyLeading: false,    //back button off
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getExpanded('juice','Drinks  & Hotels','42 Place'),
                    getExpanded('cuisine','Fine Dining','15 Place'),
                  ],
                ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('cafe','Cafes','28 Place'),
                  getExpanded('tracking','Nearby','34 Place'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('dining','Fast food','29 Place'),
                  getExpanded('fast-food','Featured Foods','21 Place'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:  [
          getBottomNavigationBarItem('Home',const IconData(0xead0,fontFamily: 'outline_material_icons',fontPackage: 'outline_material_icons')
          ),
          getBottomNavigationBarItem('Places',const IconData(0xebd2,fontFamily: 'outline_material_icons',fontPackage: 'outline_material_icons'),
          ),
          getBottomNavigationBarItem('BookMark',const IconData(0xec8e,fontFamily: 'outline_material_icons',fontPackage: 'outline_material_icons'),
          ),
          getBottomNavigationBarItem('Profile',const IconData(0xe90c,fontFamily: 'outline_material_icons',fontPackage: 'outline_material_icons'),
          ),
        ],
        currentIndex:1,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }

  BottomNavigationBarItem getBottomNavigationBarItem(String title,IconData iconName){
    return BottomNavigationBarItem(
      icon: Icon(iconName,size: 35.0,
      ),
      label: title,

    );
  }

  Expanded getExpanded(String image,String mainText,String subText){
    return  Expanded(
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 10.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
              ),
              boxShadow: [
                BoxShadow(),
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/main/$image.png',height: 80.0,),
              const SizedBox(
                height: 5,
              ),
               Text(mainText,
                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
               Text(subText,
                  style: const TextStyle(fontSize: 15,color: Colors.grey),
              ),

            ],
          ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
        },
      ),
    );
  }
}
