import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_text.dart';

class TLWRAlertDialog extends StatelessWidget {
  const TLWRAlertDialog({
    Key? key,
    this.title = '',
    this.description = '',
    this.closeButtonText = 'Close',
  }) : super(key: key);

  final String title;
  final String description;
  final String closeButtonText;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return AlertDialog(
          title: TLWRText.subtitle1(title),
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: TLWRText.bodyText1(
              description,
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
