
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/Coffee%20Ui/CoffeeType.dart';

import 'coffee_tile.dart';

class CoffeeUi extends StatefulWidget {
   const CoffeeUi({Key? key }) : super(key: key);

  @override
  State<CoffeeUi> createState() => _CoffeeUiState();
}

class _CoffeeUiState extends State<CoffeeUi> {
  //list of coffee types
  final List coffeeType =[
    //[coffee type, isSelected]
    ['Cappucino', true,],
    ['Latte', false,],
    ['Black', false,],
    ['Tea', false,],
  ];
  //user tapped on coffee types
  void coffeeTypeSelected (int index){
    setState(() {
      //this for loop makes every selection false
      for(int i=0;i<coffeeType.length;i++){
        coffeeType[i][1]=false;
      }
      coffeeType[index][1]=true;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [Padding(
          padding: EdgeInsets.only(right:20.0 ),
          child: Icon(Icons.person),
          
        )],

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ''),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25),
            child:  Text("Find the best coffee for you",
              style: TextStyle(fontFamily: 'googlefonts',
                fontSize: 60,color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style:const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                prefixIconColor:Colors.orange,
                hintText: 'Find your coffee..',
                hintStyle: const TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),

                ),
              ),
            ),
          ),

          const SizedBox(height: 25,),

          // horizontal listview//
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context,index){
              return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTab: (){
                    coffeeTypeSelected(index);
                  }
                  );
            })


              ),


          //coffee card listview
          Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  //Coffee card
                  CoffeeTile(
                      coffeeImagePath: 'images/coffee/coffee033.jpg',
                      coffeeName: 'Cappucino',
                      coffeePrice: '4.20'),

                  CoffeeTile(
                      coffeeImagePath: 'images/coffee/coffee022.jpg',
                      coffeeName: 'Black',
                      coffeePrice: '5.25'),

                  CoffeeTile(
                      coffeeImagePath: 'images/coffee/coffee01.jpg',
                      coffeeName: 'Milk Coffee thing',
                      coffeePrice: '3.10'),
                ],
              ),
          ),

        ],
      ),
    );
  }
}
