import 'package:flutter/material.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_frontend/presentation/shared/resources/resources.dart';

const verticalHeight1 = SizedBox(
  height: 80,
);
const verticalHeight2 = SizedBox(
  height: 40,
);
const verticalHeight3 = SizedBox(
  height: 20,
);

class HomeContents extends StatelessWidget {
  const HomeContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        Expanded(
          flex: 8,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalHeight1,
                const Text(
                  'TLWR: The Long and Winding Road',
                  style: TextStyle(
                    fontSize: 40,
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                verticalHeight3,
                Image.asset(Images.tlwrImage),
                verticalHeight1,
                const SecondaryTitle('Problem We tried to Solve'),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'During service experience, users sometimes encounter the long and winding road to achieve their goal.',
                ),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'As a service developer and provider, we need to know how the users suffer from the complex route connections and how to enhance the routing connections.',
                ),
                const SecondaryTitle('What we provide'),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'TLWR (The Long and Winding Road) provides a collection tool of routing behavior of users and a visualization dynamic transition of routing paths for Flutter based services.',
                ),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'We hope that service developers and providers can achieve useful insight of users behavior and what has to be modified for the enhancement of the service.',
                ),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'This is a working site (https://tlwr.netlify.app). Have a look around, we made the frontend as intuitive as possible to make it supa-easy for new users, and also prepared a demo account with pre-recorded routing behaviors.',
                ),
                const SecondaryTitle('The Team'),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'Taejung Heo',
                ),
                const Paragraph(
                  // ignore: lines_longer_than_80_chars
                  'Wonmo Jung',
                ),
                verticalHeight1,
              ],
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}

class SecondaryTitle extends StatelessWidget {
  const SecondaryTitle(this.text, {Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalHeight2,
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: kcPrimaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        verticalHeight3,
      ],
    );
  }
}

class Paragraph extends StatelessWidget {
  const Paragraph(this.text, {Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: kcLightGreyColor,
            fontWeight: FontWeight.w300,
          ),
        ),
        verticalHeight3,
      ],
    );
  }
}
