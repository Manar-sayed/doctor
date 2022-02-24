import 'package:doctor/mainHome.dart';
import 'package:flutter/material.dart';

import 'botton.dart';

class siginsuccess extends StatefulWidget {

  @override
  State<siginsuccess> createState() => _siginsuccessState();
}

class _siginsuccessState extends State<siginsuccess> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      // backgroundColor: Color.fromRGBO(212, 255, 254,1),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // logo here
           Padding(
             padding: const EdgeInsets.only(bottom: 20),
             child: Container(width: 160,height: 160,
               child:Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/1293/1293029.png"),),
               // child: Icon(Icons.check,size: 120,color: Colors.white),
               // decoration: BoxDecoration(color: const Color.fromRGBO(6, 187, 192, 100),
               //     borderRadius: BorderRadius.circular(150),
               //
               //
               //
               // boxShadow:  [
               // BoxShadow(
               //   color: Colors.white,
               //   // color: Color.fromRGBO(214, 255, 254, 10),
               //   blurRadius: 10,
               //   spreadRadius: 10,
               //   offset: Offset(0, 3),
               // ),
               // ]),
             ),
           ),


            Text(
              "شكرا لك",
              textAlign: TextAlign.center,
              style: TextStyle(
                color:Color.fromARGB(255, 47, 184, 202),
                fontSize: 28 ,
                fontWeight: FontWeight.bold,
              ),),

            Text(
              "  لقد قمت بإنشاء حساب جديد\n بنجاح"
                  ,
              textAlign: TextAlign.center,
              style: TextStyle(
                color:Colors.black,
                fontSize: 24 ,
                fontWeight: FontWeight.bold,
              ),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: SizedBox(

                  height: 50,
                  width:  155,
                  child: RaisedButton(

                      color:const Color.fromRGBO(6, 187, 192, 1),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(

                            ),
                          ),
                        );
                      },

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child:Text(
                        "تم",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30 ,
                          fontWeight: FontWeight.bold,



                        ),


                      )
                  )

              ),
            ),

          ],
        ),
      ),
    );

  }
}


