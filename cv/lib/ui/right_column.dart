import 'package:cv/main.dart';
import 'package:cv/ui/right_column/content_widget.dart';
import 'package:cv/ui/right_column/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'left_column/name_widget.dart';

class RightColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  RightColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [NameWidget(), PersonalInfo()],
                ),
                ContentWidget(contentTitle: 'Experience',sizingInformation: sizingInformation,),
                ContentWidget(contentTitle: 'Education',sizingInformation: sizingInformation,),
              ],
            )),
      ),
    );
  }
}


