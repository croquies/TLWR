// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

enum TLWRTextStyle {
  headline1,
  headline2,
  headline3,
  subtitle1,
  caption,
  bodyText1,
}

class TLWRText extends StatelessWidget {
  const TLWRText.heading1(this.text, {this.textAlign, this.color})
      : _style = TLWRTextStyle.headline1;
  const TLWRText.heading2(this.text, {this.textAlign, this.color})
      : _style = TLWRTextStyle.headline2;
  const TLWRText.heading3(this.text, {this.textAlign, this.color})
      : _style = TLWRTextStyle.headline3;
  const TLWRText.subtitle1(this.text, {this.textAlign, this.color})
      : _style = TLWRTextStyle.subtitle1;
  const TLWRText.caption(this.text, {this.textAlign, this.color})
      : _style = TLWRTextStyle.caption;

  const TLWRText.bodyText1(this.text, {this.textAlign, this.color})
      : _style = TLWRTextStyle.bodyText1;

  final String text;
  final TextAlign? textAlign;
  final TLWRTextStyle? _style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    TextStyle? style;
    switch (_style) {
      case TLWRTextStyle.headline1:
        style = Theme.of(context).textTheme.headline1;
        break;
      case TLWRTextStyle.headline2:
        style = Theme.of(context).textTheme.headline2;
        break;
      case TLWRTextStyle.headline3:
        style = Theme.of(context).textTheme.headline3;
        break;
      case TLWRTextStyle.subtitle1:
        style = Theme.of(context).textTheme.subtitle1;
        break;
      case TLWRTextStyle.caption:
        style = Theme.of(context).textTheme.caption;
        break;
      case TLWRTextStyle.bodyText1:
      default:
        style = Theme.of(context).textTheme.bodyText1?.copyWith(color: color);
    }

    return Text(
      text,
      textAlign: textAlign,
      style: style,
    );
  }
}
