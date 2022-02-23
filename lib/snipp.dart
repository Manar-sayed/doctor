
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'medical_prescription.dart';

class snipp extends StatefulWidget {
  const snipp({Key? key}) : super(key: key);

  @override
  _snippState createState() => _snippState();
}

class _snippState extends State<snipp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_open_rounded,
                color: Colors.white,
                size: 30,
              ))
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 40,
            width: 60,
            child: const Image(
              image: AssetImage("assets/tameni.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        // leadingWidth: 100,


        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Stack(
          children: [
      Container(
      decoration: const BoxDecoration(
      color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20))),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
          Container(width: MediaQuery.of(context).size.width*.3,
          height: 160,
          child: InkWell(onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => medical_prescription()));
          },
              child: Image(image: AssetImage("assets/n1.jpg"),fit: BoxFit.cover,)),),

          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "إنشاء روشتة جديدة",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
              ),
              Icon(Icons.add,color:  Color.fromRGBO(6, 187, 192, 1),size: 35,),

            ],
          ),
            Text(
              "يمكنك حفظ شكل جاهز للاستخدام \n"
                  "بسهولةٍ",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey)),
              textAlign: TextAlign.center,
            ),
    SizedBox(height: 25,),
    Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Icon(Icons.text_snippet_outlined,color: Colors.grey,size: 25,),
            SizedBox(width: 30,),
            Text(
              " روشتة علاج",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),

          ],),
        decoration: BoxDecoration(
        boxShadow: const [
        BoxShadow(
        color: Color.fromRGBO(137, 201, 203,100),
        blurRadius: 3,
        spreadRadius: .5,
        offset: Offset(0,2 ),
        ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)),
        height: 70,
        width:MediaQuery.of(context).size.width*.85

        ),
    ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.text_snippet_outlined,color: Colors.grey,size: 25,),
                      SizedBox(width: 30,),
                      Text(
                        " روشتة علاج",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),

                    ],),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(137, 201, 203,100),
                          blurRadius: 3,
                          spreadRadius: .5,
                          offset: Offset(0,2 ),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  height: 70,
                  width:MediaQuery.of(context).size.width*.85

              ),
            ),
        ],),
      ),
      ),

          ]
      )
    );
  }
}
