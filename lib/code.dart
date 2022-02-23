import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'botton.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  _codeState createState() => _codeState();
}

class _codeState extends State<code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 187, 192, 10),
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ))
        // ],
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical
          ,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
              Text(
              "تسجيل الدخول ",
              style: GoogleFonts.roboto(
                color: Color.fromRGBO(6, 187, 192, 10),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "كارنيه النقابة",
                    style: GoogleFonts.roboto(
                      color: Color.fromRGBO(34, 49, 46, 30),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                SizedBox(height: 30,),
                Container(

                  // decoration: BoxDecoration(
                  //     boxShadow:  [
                  //       BoxShadow(
                  //         color: Color.fromRGBO(6, 187, 192, 100),
                  //         blurRadius: 3,
                  //         spreadRadius: .1,
                  //         offset: Offset(0,2 ),
                  //       ),
                  //     ],
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(20)),
child: Container(
  padding: EdgeInsets.all(28),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  ),
  child: Column(
      children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textFieldOTP(first: true, last: false),
                _textFieldOTP(first: false, last: false),
                _textFieldOTP(first: false, last: false),
                _textFieldOTP(first: false, last: true),
              ],
            ),
      ]  ),
),
                ),
                SizedBox(height: 90,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox.fromSize(
                        size: Size(66, 66), // button width and height
                        child: ClipOval(
                          child: Material(
                            color: Color.fromRGBO(6, 187, 192, 30), // button color
                            child: InkWell(
                              splashColor: Colors.green, // splash color
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => BottomNavBar()));
                              }, // button pressed
                              child:
                                  Icon(Icons.done,size: 40,color: Colors.white,), // icon
                                   // text

                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 60,)

              ],
            ),
          ),
        ),

    ),
    ]),
    );
  }
  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: .7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Color.fromRGBO(34, 49, 46, 30),),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color.fromRGBO(6, 187, 192, 10),),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
