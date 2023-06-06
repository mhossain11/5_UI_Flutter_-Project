import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTile({super.key,
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice

});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:12.0 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeeImagePath),
              ),

              //coffee Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                     Text(
                      coffeeName,
                      style: const TextStyle(fontSize: 20,color: Colors.white),),
                    const SizedBox(height: 5,),
                    Text('With Almond Milk',style: TextStyle(color: Colors.grey[700],)),

                  ],
                ),
              ),

              //price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      '\$$coffeePrice',
                      style:const TextStyle(color: Colors.white),),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4)

                      ),
                      child: const Icon(Icons.add),

                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
