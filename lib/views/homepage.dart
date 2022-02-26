import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:melissav_portfolio/utils/constants.dart';
import 'package:melissav_portfolio/widgets/section_header.dart';
import 'package:melissav_portfolio/widgets/skill.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "melissa quintanilla",
                style: GoogleFonts.robotoMono(),
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi,",
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .merge(GoogleFonts.robotoSlab())),
                Text(
                    "I'm a passionate mobile designer and developer based in San Antonio, TX.",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .merge(GoogleFonts.robotoMono())),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text('contact me',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .merge(GoogleFonts.robotoMono(
                                      color: Colors.deepPurple))))),
                ),
                SectionHeaderWidget(label: 'about me'),
                Text(
                  aboutMe,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .merge(GoogleFonts.robotoSlab()),
                  softWrap: true,
                ),
                Container(height: 20),
                SectionHeaderWidget(label: 'skills'),
                Wrap(
                  runSpacing: 10,
                  children: [
                    for (var i in skills)
                      SkillWidget(
                        label: i,
                      )
                  ],
                ),
                Container(height: 20),
                SectionHeaderWidget(label: 'portfolio'),
              ],
            ),
          ),
        ));
  }
}
