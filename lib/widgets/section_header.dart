import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String label;

  const SectionHeaderWidget({Key key, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: Theme.of(context)
            .textTheme
            .headline4
            .merge(GoogleFonts.robotoSlab()));
  }
}
