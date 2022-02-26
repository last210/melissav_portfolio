import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillWidget extends StatelessWidget {
  final String label;

  const SkillWidget({Key key, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4)),
        child: Text(label,
            style: Theme.of(context)
                .textTheme
                .headline5
                .merge(GoogleFonts.robotoMono(color: Colors.deepPurple))),
      ),
    );
  }
}
