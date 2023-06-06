import 'package:flutter/material.dart';
import 'package:flutter_ui_design/home.dart';
import 'package:flutter_ui_design/login/sign_up.dart';

class Login_Ui extends StatefulWidget {
  const Login_Ui({Key? key}) : super(key: key);

  @override
  State<Login_Ui> createState() => _Login_UiState();
}

class _Login_UiState extends State<Login_Ui> {
  @override
  Widget build(BuildContext context) {
    //Flutter: How to pop last visited screen from stack in flutter
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("LogIn UI",style: TextStyle(color: Color(0xffF97038)),),
        centerTitle: true,
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  height: 50,
                  width: 50,
                  image: AssetImage('images/logo.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Maintenance",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'rubik_medium',
                          color: Color(0xff203142)),
                    ),
                    Text(
                      "Box",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'rubik_medium',
                          color: Color(0xffF97038)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'rubik_medium',
                    color: Color(0xff203142)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Lorem Ipsum is simply dummy \n text of the printing.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'rubik_regular',
                    color: Color(0xff203142)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.alternate_email,
                    color: Color(0xff323F48),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color(0xffF8F9FA),
                    prefixIcon: const Icon(
                      Icons.lock_open,
                      color: Color(0xff323F48),
                    ),
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Home())
                );
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffF97038),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text("Log In",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik Medium',
                          color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text(
                  'Dont have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4C5980),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Sign_Up()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xffF97038),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
