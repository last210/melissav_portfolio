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
              alignment: Alignment.centerLeft,
              child: Text(
                "melissa quintanilla",
                style: GoogleFonts.robotoMono(),
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("about me",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .merge(GoogleFonts.robotoSlab())),
                          Text(
                              "Hi, I'm Melissa Quintanilla, a passionate mobile designer and developer based in San Antonio, TX.",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .merge(GoogleFonts.robotoMono())),
                          SizedBox(height: 40),
                          Text(
                            aboutMe,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .merge(GoogleFonts.robotoMono()),
                            softWrap: true,
                          ),
                          Container(height: 20),
                          Table(
                            columnWidths: {
                              0: IntrinsicColumnWidth(),
                              1: FixedColumnWidth(10),
                              2: IntrinsicColumnWidth()
                            },
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: SectionHeaderWidget(label: 'skills'),
                                ),
                                SizedBox(width: 20),
                                SectionHeaderWidget(label: 'experience'),
                              ]),
                              TableRow(children: [
                                Wrap(
                                  runSpacing: 10,
                                  children: [
                                    for (var i in skills)
                                      SkillWidget(
                                        label: i,
                                      )
                                  ],
                                ),
                                SizedBox(width: 20),
                                Wrap(
                                  direction: Axis.vertical,
                                  spacing: 10,
                                  children: [
                                    experienceTile(
                                        context,
                                        'Amica Insurance',
                                        'Mobile Engineer',
                                        'Aug 2022',
                                        'Present'),
                                    experienceTile(
                                        context,
                                        'Cleartech Software, LLC',
                                        'COO',
                                        'Mar 2020',
                                        'Present'),
                                    experienceTile(context, 'FloatMe Corp',
                                        'Head of UX', 'Jul 2019', 'Mar 2020')
                                  ],
                                ),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (MediaQuery.of(context).size.width >= 1100)
                      Container(
                          margin: EdgeInsets.all(30),
                          width: MediaQuery.of(context).size.width / 2,
                          child: Image.asset('assets/purple_laptop_girl.png'))
                  ],
                ),
                //SectionHeaderWidget(label: 'portfolio'),
              ],
            ),
          ),
        ));
  }
}

Widget experienceTile(BuildContext context, String company, String title,
        String startDate, String endDate) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: Theme.of(context)
              .textTheme
              .headline6
              .merge(GoogleFonts.robotoMono()),
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .merge(GoogleFonts.robotoMono()),
        ),
        Text(
          '$startDate - $endDate',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .merge(GoogleFonts.robotoMono()),
        )
      ],
    );
