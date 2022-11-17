/*
import 'dart:js';
import 'package:cv/ui/left_column.dart';
import 'package:cv/ui/left_column/about_me.dart';
import 'package:cv/ui/left_column/height20.dart';
import 'package:cv/ui/left_column/name_widget.dart';
import 'package:cv/ui/left_column/personal_avatar.dart';
import 'package:cv/ui/left_column/skills.dart';
import 'package:cv/ui/right_column.dart';
import 'package:cv/ui/right_column/content_widget.dart';
import 'package:cv/ui/right_column/personal_info.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

final primaryColor = Colors.black;
final backgroundColor = const Color(0xFFEDF1F4);

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop
                ? DesktopUI(sizingInformation: sizingInformation,)
                : Column(children: [
              //From Left widget
              PersonalAvatar(),
              Height20(),
              AboutMe(sizingInformation: sizingInformation),
              Height20(),
              Skills(sizingInformation: sizingInformation),

              // From Right Widget
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center, children: [
                  NameWidget(),
                  PersonalInfo()
                ],
                ),
                ContentWidget(contentTitle: "experience", sizingInformation: sizingInformation),
                ContentWidget(contentTitle: "education", sizingInformation: sizingInformation)

              ],)

            ],);
          },
        ),
      ),
    ));
  }
}

class DesktopUI extends StatelessWidget {
  const DesktopUI({
    Key? key,

    required this.sizingInformation

  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftColumn(sizingInformation),
            RightColumn(sizingInformation)
          ],
        ),
      )
      ,
    );
  }
}

 */
