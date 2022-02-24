import 'package:doctor/home.dart';
import 'package:flutter/material.dart';

class introScreen extends StatelessWidget {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 187, 192, 10),
      body: Center (
        child: Padding (
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Image(height: 90,width: 150,
                  image: AssetImage("assets/tameni.png"),
                  fit: BoxFit.contain,
                ),
              ),

              const Text(
                "صحتك تهمنا",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24 ,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),
              Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain,
              ),
              SizedBox(height: 50,),
              SizedBox(
                  height: 60,
                  width:  270,
                  child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home(),

                          ),
                        );
                      },

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'بدأ الإستخدام',
                        style: TextStyle(
                          color: Color.fromRGBO(6, 187, 192, 10),
                          fontSize: 27 ,
                          fontWeight: FontWeight.bold,

                        ),


                      )
                  )

              ),

            ],
          ),
        ),
      ),
    );
  }

}
