import 'package:flutter/material.dart';

import 'color.dart';
import 'my_widgets.dart';


class MenuScreen extends StatelessWidget {
  const MenuScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: MyColors().primaryColor,
            body: Container(
              margin: const EdgeInsets.only(top: 10,right: 25),
              alignment: Alignment.topRight,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18,bottom: 10),
                    child: Icon(Icons.menu_open_rounded,color:MyColors().white,size: 30,),
                  ),
                  const CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/1.jpg'),),
                  const Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: WhiteText(text: 'مرحبا', size: 21),
                  ),
                  const WhiteText(text: 'علي احمد', size: 21),
                  const SizedBox(height: 10,),
                  const TextWithIcon(text: 'الملف الشخصي', icon: Icons.person),
                  const TextWithIcon(text: 'التنبيهات', icon: Icons.notifications),
                  const TextWithIcon(text: 'المساعدة', icon:  Icons.help),
                  const TextWithIcon(text: 'الاعدادات', icon:  Icons.settings,),
                  const TextWithIcon(text: 'تسجيل الخروج', icon: Icons.logout_outlined),

                ],
              ),
            )
        ),
      ),
    );
  }
}