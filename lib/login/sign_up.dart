import 'package:flutter/material.dart';
import 'package:flutter_ui_design/login/login_ui.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       // resizeToAvoidBottomInset: false,
        appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        backgroundColor: const Color(0xffF97038),
      ),
      body: SingleChildScrollView(
        child: Column(

          children:  [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('images/logo.png'))
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Maintenance",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),
                  ),
                  Text(" Box",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xffF97038) ),
                  ),
                ]
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.name,
                cursorColor: const Color(0xffF97038),
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Name",
                    labelStyle: const TextStyle(color: Color(0xffF97038)),
                  //  hintText: "Name",
                    fillColor: const Color(0xffF8F9FA),
                    prefixIcon: const Icon(
                        Icons.person_rounded,
                        color: Color(0xff323F48)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF97038)),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                cursorColor: const Color(0xffF97038),
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Contact",
                    labelStyle: const TextStyle(color: Color(0xffF97038)),
                    //hintText: "Contact",
                    fillColor: const Color(0xffF8F9FA),
                    prefixIcon: const Icon(
                        Icons.phone,
                        color: Color(0xff323F48)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF97038)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: const Color(0xffF97038),
                decoration: InputDecoration(
                    filled: true,
                   labelText: "Email",
                    labelStyle: const TextStyle(color: Color(0xffF97038)),
                   // hintText: "Email",
                    fillColor: const Color(0xffF8F9FA),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Color(0xff323F48),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF97038)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorColor: const Color(0xffF97038),
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Password",
                   // hintText: "Password",
                    labelStyle: const TextStyle(color: Color(0xffF97038)),
                    fillColor: const Color(0xffF8F9FA),
                    prefixIcon: const Icon(
                      Icons.lock_open,
                      color: Color(0xff323F48),
                    ),
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF97038)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)
                    )

                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>  Login_Ui())
                );
                Fluttertoast.showToast(msg: "Successfully Login" ,fontSize: 18);
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffF97038),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text("SIGN UP",
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
                  'Already Have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4C5980),
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login_Ui()));
                  },
                  child: const Text(
                    'Log In',
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
