// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_frontend/presentation/shared/styles.dart';

class TLWRText extends StatelessWidget {
  const TLWRText.headingOne(this.text, {this.textAlign})
      : style = heading1Style;
  const TLWRText.headingTwo(this.text, {this.textAlign})
      : style = heading2Style;
  const TLWRText.headingThree(this.text, {this.textAlign})
      : style = heading3Style;
  const TLWRText.headline(this.text, {this.textAlign}) : style = headlineStyle;
  const TLWRText.subheading(this.text, {this.textAlign})
      : style = subheadingStyle;
  const TLWRText.caption(this.text, {this.textAlign}) : style = captionStyle;

  TLWRText.body(this.text, {this.textAlign, Color color = kcMediumGreyColor})
      : style = bodyStyle.copyWith(color: color);

  final String text;
  final TextAlign? textAlign;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
    );
  }
}
