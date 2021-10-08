import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
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
        final size = sizingInformation.screenSize;

        return Container(
          width: size.width * (sizingInformation.isDesktop ? 0.5 : 0.8),
          height: size.height * (sizingInformation.isDesktop ? 0.5 : 0.8),
          padding: const EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
            bottom: 12,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 4),
              TLWRText.subheading(
                title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              TLWRText.body(
                description,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: TLWRText.body(
                      closeButtonText,
                      color: kcPrimaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
