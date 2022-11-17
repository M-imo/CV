import 'package:cv/ui/left_column/personal_avatar.dart';
import 'package:cv/ui/left_column/skills.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../main.dart';
import 'left_column/about_me.dart';
import 'left_column/height20.dart';


class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const LeftColumn(this.sizingInformation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery
            .of(context)
            .size
            .width / 3 * 1, // Take 1/3 width
        color: primaryColor,
        child: Column(
          children: [
            PersonalAvatar(),
            Height20(),
            AboutMe(sizingInformation: sizingInformation),
            Height20(),
            Skills(sizingInformation: sizingInformation)

          ],
        ),
    );
  }
}





