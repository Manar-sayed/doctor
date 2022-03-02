import 'package:card_swiper/card_swiper.dart';
import 'package:doctor/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class date extends StatefulWidget {
  const date({Key? key}) : super(key: key);

  @override
  _dateState createState() => _dateState();
}

class _dateState extends State<date> {
  var list = [
          date2(),
          date2(),
          date1(),
          date2(),
          date2(),
  ];
  @override
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2022, 2, 22),
    end: DateTime(2022, 3, 22),
  );

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
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: pickDateRang,
                          child: Text(
                            "click here",
                            style: TextStyle(fontSize: 20),
                          )),
                      SizedBox(
                        height: 140,
                      ),
//                       Container(
//                         width: MediaQuery.of(context).size.width*.6,
//
// height: 220,
//                         child: Swiper(
//
//                           itemCount: 5,
//                           layout: SwiperLayout.DEFAULT,
//                           autoplay: true,
//                           pagination: const SwiperPagination(
//                               builder: SwiperPagination.dots
//                           ),
//                           itemBuilder: (BuildContext context, int index) {
//                             return list[index];
//                           },
//                         ),
//
//                       ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            date2(),
                            date2(),
                            date1(),
                            date2(),
                            date2(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 140,
                      ),
                      FlatButton(
                        child: Text(
                          'تسجيل الدخول',
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
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => signIn()));
                        },
                      ),
                    ],
                  ))),
        )
      ]),
    );
  }

  Future pickDateRang() async {
    showDateRangePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDateRange: dateRange,
    );
  }
}
