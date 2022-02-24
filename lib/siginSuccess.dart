import 'package:flutter/material.dart';

class siginsuccess extends StatefulWidget {

  @override
  State<siginsuccess> createState() => _siginsuccessState();
}

class _siginsuccessState extends State<siginsuccess> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(212, 255, 254,1),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // logo here
           Padding(
             padding: const EdgeInsets.only(bottom: 20),
             child: Container(width: 200,height: 200,
               child: Icon(Icons.check,size: 120,color: Colors.white.withOpacity(1)),
               decoration: BoxDecoration(color: const Color.fromRGBO(6, 187, 192, 150),
                   borderRadius: BorderRadius.circular(150),



               boxShadow:  [
               BoxShadow(
                 color: Color.fromRGBO(214, 255, 254, 10),
                 blurRadius: 15,
                 spreadRadius: 15,
                 offset: Offset(0, 3),
               ),
               ]),),
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

                      onPressed: () {},

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


