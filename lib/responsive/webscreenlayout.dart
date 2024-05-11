import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';

import '../widgets/search.dart';
import '../widgets/translation_button.dart';
import '../widgets/web/searcgbutton.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(onPressed: (){}, child: const Text('Gmail', style: TextStyle(color: primaryColor,
          fontWeight: FontWeight.w400),)),
          TextButton(onPressed: (){}, child: const Text('Images', style: TextStyle(color: primaryColor,
          fontWeight: FontWeight.w400),)),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/more-apps.svg',color: primaryColor,)),
          const SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              color: const Color(0xff1A73E8),
              height: 20,
              onPressed: (){}, child: const Text('Sign in', style: TextStyle(color: Colors.white),),),
          ),


        ],
      ),
      body:   Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: size.height*0.3,
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              SeachWidget(),
              SizedBox(height: 20,),
              SearchButtons(),
               SizedBox(height: 20,),
               TranslationButton(),
            ],
          ))
          
        ],),
      )
    );
  }
}