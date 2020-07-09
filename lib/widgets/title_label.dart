import 'package:flutter/material.dart';
import 'package:common/styles/styles.dart';
import 'package:common/styles/strings.dart';

class TitleLabel extends StatelessWidget {
  const TitleLabel({Key key, this.label, this.pl, this.pr}) : super(key: key);
  final label;
  final pl;
  final pr;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 5, top: 5),
        child: Text(label,
            style: TextStyle(
                fontSize: 15,
                fontFamily: Strings.fFamily,
                fontWeight: FontWeight.w600,
                color: primaryColor)),
      ),
    );
  }
}
