import 'package:flutter/material.dart';
import 'package:flutter_ui_design/Education%20App/WelcomeScreen.dart';
import 'package:flutter_ui_design/Food%20Discovery/food_discoveryui.dart';
import 'Coffee Ui/cpffeeui.dart';
import 'Mentor Details/mentor_details.dart';
import 'login/login_ui.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ui Design"),
        centerTitle: true,
        automaticallyImplyLeading: false, //remove the back button
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color(0xffF97038),
                width: 350,
                height: 100,
                child: ElevatedButton(

                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const Login_Ui())
                      );
                    //  Fluttertoast.showToast(msg: "Button Click" ,fontSize: 18);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 80),
                      backgroundColor: const Color(0xffF97038),
                    ),
                    child: const Text("Login & Signup",style: TextStyle(fontSize: 25),)
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                color: Colors.grey.shade200,

                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const MentorDetails())
                    );
                    //Fluttertoast.showToast(msg: "Button Click" ,fontSize: 18);
                  },
                  child: Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4,4),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(-4,-4),
                          )
                        ],
                    ),
                    child: const Center(child: Text("Social Media",
                      style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.bold),)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.shade200,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>  Food_DiscoveryUi())
                    );
                  },
                  child: Container(
                    width: 350,
                    height: 100,

                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blue,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4,4)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(-4, -4)
                        ),
                      ],

                    ),
                    child: const Center(child: Text("Food Discovery UI",
                      style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                  ),
                ),
              )
            ],

          ),
          const SizedBox(
            height:15,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.shade200,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>   const CoffeeUi())
                    );
                  },
                  child: Container(
                    width: 350,
                    height: 100,

                    decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4,4)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(-4, -4)
                        ),
                      ],

                    ),
                    child: const Center(child: Text("Coffee UI",
                      style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                  ),

                ),
              )
            ],

          ),
          const SizedBox(
            height:15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.deepPurple.shade50,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>   const WelcomeScreen())
                    );

                  },
                  child: Container(
                    width: 350,
                    height: 100,

                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.deepPurple,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4,4)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(-4, -4)
                        ),
                      ],

                    ),
                    child: const Center(child: Text("Education App UI",
                      style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                  ),

                ),
              )
            ],

          ),

        ],
      ),

    );
  }
}
