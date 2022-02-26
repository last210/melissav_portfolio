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
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.grey),
            color: Colors.purple[50],
            borderRadius: BorderRadius.circular(30)),
        child: Text(label,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .merge(GoogleFonts.robotoMono(color: Colors.deepPurple))),
      ),
    );
  }
}
