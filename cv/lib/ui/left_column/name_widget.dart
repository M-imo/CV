
import 'package:cv/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return Container(
   color: primaryColor,
   child: Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       FittedBox(
         fit: BoxFit.fitHeight,
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 8),
           child: Text( "MIRIAM MOE",
             style: GoogleFonts.montserrat(
               fontWeight: FontWeight.bold,
               fontSize: 50,
               color: Colors.white
             ),

           ),
         ),
       )
     ],
   ),
 );
  }
  
}