

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MentorDetails extends StatefulWidget {
  const MentorDetails({Key? key}) : super(key: key);

  @override
  State<MentorDetails> createState() => _MentorDetailsState();
}

class _MentorDetailsState extends State<MentorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Mentor details",),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,controller: ScrollController(keepScrollOffset: true),
        child: Column(
          children: [

            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: const Color(0xFFE8EAF6),
                  borderRadius: BorderRadius.circular(10.0)
              ),

              child: Row(
                children: [
                  Container(

                    height: 100,
                    child: const Image(image:NetworkImage("https://cdn-icons-png.flaticon.com/512/64/64572.png") ,),
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text("Faysal Hossain"),
                          Icon(Icons.panorama_fisheye_rounded)
                        ],
                      ),
                      const Text("Software Developer"),
                      const SizedBox(height: 10,),

                      Container(
                        margin: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                        child: Row(
                          children: const [
                            Icon(Icons.star),
                            Text("4.9 (390 reviews)")
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)
                    ),

                    child: const Icon(Icons.language),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)
                    ),

                    child: const Icon(Icons.add,),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)
                    ),

                    child: const Icon(Icons.star),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)

                    ),

                    child: const Icon(Icons.star),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)
                    ),

                    child: const Icon(Icons.mark_email_unread),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      // image: NetworkImage("https://cdn-icons-png.flaticon.com/512/2118/2118701.png"),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.people_rounded),
                        SizedBox(width: 10,),
                        Text("Total Students: 2345",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Icon(Icons.people_rounded),
                        const SizedBox(width: 10,),
                        const Text("Total Students: 2345",style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    decoration: BoxDecoration(
                      // image: NetworkImage("https://cdn-icons-png.flaticon.com/512/2118/2118701.png"),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 5,),
            Container(
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),

              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                      label: const Text("Courses",style: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.star_outline_sharp),
                      label: const Text("Reviews",style: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.account_circle_outlined),
                      label: const Text("About me",style: TextStyle(fontSize: 13),),
                    ),
                  ),

                ],


              ),
            ),
            InkWell(
              child: Image.asset("images/laptop.jpg",
                fit: BoxFit.fitWidth,),
            ),
            const SizedBox(height: 5,),
            const Text("The following is a simple code snippet to display bold text in Text widget in Flutter Application.",style: TextStyle(fontSize: 15),),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Last Progress'),
                      SizedBox(
                        height: 7,
                      ),
                      Text('12/01/2023, 12:02'),
                    ],
                  ),
                  const SizedBox(width: 145,),
                  ElevatedButton.icon(
                    onPressed: (){},
                    label: const Text("Continue"),
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            InkWell(
              child: Image.asset("images/laptop.jpg",
                fit: BoxFit.fitWidth,),
            ),



          ],
        ),
      ),



    );
  }
}




