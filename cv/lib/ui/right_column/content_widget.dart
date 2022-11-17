import 'package:cv/main.dart';
import 'package:cv/ui/right_column/title_description_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.contentTitle,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String contentTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding:
              sizingInformation.deviceScreenType != DeviceScreenType.desktop
                  ? const EdgeInsets.symmetric(horizontal: 16)
                  : const EdgeInsets.all(0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      contentTitle.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          color: Colors.black87),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        TitleDescriptionWidget(
          title: 'elite killer (2020-now)',
          description: "37 kills ",
          sizingInformation: sizingInformation,
        ),
        TitleDescriptionWidget(
          title: 'elite killer (2020-now)',
          description: "37 kills ",
          sizingInformation: sizingInformation,
        ),
        TitleDescriptionWidget(
          title: 'elite killer (2020-now)',
          description: "37 kills ",
          sizingInformation: sizingInformation,
        )
      ],
    );
  }
}
