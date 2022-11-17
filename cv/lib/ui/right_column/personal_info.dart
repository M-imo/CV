import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all (16),
      child: Column (crossAxisAlignment: CrossAxisAlignment.center, children: [
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text ("Location: Oslo, Norway",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w200,
                fontSize: 30,
                color: primaryColor,
              ),)

        ),
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text ("Phone:(+47) 401 99 401 ",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w200,
                fontSize: 30,
                color: primaryColor,
              ),)

        ),
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text ("E-mail: miriam.moe00@gmail.com",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w200,
                fontSize: 30,
                color: primaryColor,
              ),)

        )
      ],),
    );
  }
}