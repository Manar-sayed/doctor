import 'dart:io';

import 'package:doctor/log/imagePicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'code.dart';

class signUp extends StatefulWidget {
  final int type;

  const signUp({required this.type});

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
        appBar: AppBar(
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         Icons.menu,
          //         color: Colors.black,
          //       ))
          // ],

          title: Image.asset(
            "assets/tameni.png",
            width: 80,
          ),
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "تسجيل دخول ",
                  style: GoogleFonts.roboto(
                    color: Color.fromRGBO(6, 187, 192, 10),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "قم بمسح كارنيه التأمين الخاصة بك  ",
                style: GoogleFonts.roboto(
                  color: Color.fromRGBO(34, 49, 46, 30),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              BuildImagePicker(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "أو  ",
                style: GoogleFonts.roboto(
                  color: Color.fromRGBO(34, 49, 46, 30),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              FlatButton(
                child: Text(
                  'رقم الكارنيه',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: const Color.fromRGBO(6, 187, 192, 1),
                textColor: Colors.white,
                minWidth: 260,
                height: 55,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => code(
                                type: widget.type,
                              )));
                },
              ),
            ],
          ),
        ));
  }
}