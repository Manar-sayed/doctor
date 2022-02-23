import 'package:doctor/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class mainHome extends StatefulWidget {
  const mainHome({Key? key}) : super(key: key);

  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 187, 192, 10),
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
      body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "مرحبا د/ على",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    child: Image(
                      image: AssetImage("assets/doctor (2).png"),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15, horizontal: 6),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(137, 201, 203, 100),
                        blurRadius: 3,
                        spreadRadius: .5,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: MediaQuery.of(context).size.width * .86,
                child: TextFormField(
                  textAlign: TextAlign.end,
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.search, color: Colors.grey[400]),
                    disabledBorder: InputBorder.none,
                    hintText: ' بحث',
                    hintStyle: TextStyle(
                        color: Colors.grey[400],
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 2),
                    border: const OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Text(
                "20نوفمبر 2022    3:30م",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 1, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "الكل",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "مواعيد اليوم",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView(
                  children: [
                    pact(
                      "فحص",
                      Colors.teal,
                    ),
                    pact(
                      "استشاره",
                      Colors.blue,
                    ),
                    pact(
                      "تم",
                      Colors.teal,
                    ),
                    pact(
                      "تم",
                      Colors.teal,
                    ),
                    pact(
                      "تم",
                      Colors.teal,
                    ),
                    pact(
                      "تم",
                      Colors.teal,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
