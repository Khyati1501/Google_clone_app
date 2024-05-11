import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';

class SeachWidget extends StatelessWidget {
  const SeachWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
    child: Image.asset('assets/google-logo.png', 
    height: size.height * 0.1,
    ),
    
  ),
        const SizedBox(
          height: 20,
          
        ),
        SizedBox(
          width: size.width*0.4,
          child: TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/search-icon.svg', color: searchBorder, width: 1, height: 1,),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/mic-icon.svg', ),
            ), 
            ),
            
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}