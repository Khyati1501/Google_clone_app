import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearcgButton2 extends StatelessWidget {
  final String text;
  
  const SearcgButton2({super.key, required this. text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(
        Radius.circular(4),
        
      )),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 25, vertical: 18),
      child: Text(
        text,
      ),
      onPressed: (){

      }
      
      );
  }
}