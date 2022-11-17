import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../main.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'skills'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            fontSize: 50,
                            color: sizingInformation.deviceScreenType ==
                                    DeviceScreenType.desktop
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              )),
          // skill progress bar
          DetailSkill(
              skillName:"Flutter",
              skillValue: 1.0,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName:"Kotlin",
              skillValue: 0.5,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName:"Swift",
              skillValue: 1.0,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName:"HTML/CSS",
              skillValue: 1.0,
              sizingInformation: sizingInformation),
        ],
      ),
    );
  }
}

class DetailSkill extends StatelessWidget {
  const DetailSkill({
    Key? key,
    required this.skillValue,
    required this.skillName,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String skillName;
  final double skillValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Text(
            skillName.toUpperCase(),
            style: GoogleFonts.montserrat(
                fontSize: 20,
                color: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? Colors.white
                    : primaryColor,
                fontWeight: FontWeight.w100),
          ),
          const SizedBox(
            width: 50,
          ), const Spacer(),
          Expanded(
            child: Align(alignment: Alignment.centerRight,

              child: LinearPercentIndicator(
                alignment: MainAxisAlignment.end,
                percent: skillValue,
                backgroundColor: primaryColor,
                progressColor: Colors.white70,
              ),
            ),
          )
        ],
      ),
    );
  }
}
