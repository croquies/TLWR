// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_frontend/presentation/shared/styles.dart';

class TLWRButton extends StatelessWidget {
  const TLWRButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.loading = false,
    this.onTap,
    this.leading,
  })  : outline = false,
        super(key: key);

  const TLWRButton.outline({
    Key? key,
    required this.title,
    this.loading = false,
    this.disabled = false,
    this.onTap,
    this.leading,
  })  : outline = true,
        super(key: key);

  final String title;
  final bool disabled;
  final bool loading;
  final void Function()? onTap;
  final bool outline;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: outline
            ? Border.all(
                color: kcPrimaryColor,
              )
            : null,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: outline
            ? Colors.transparent
            : !disabled
                ? kcPrimaryColor
                : kcMediumGreyColor,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            width: double.infinity,
            height: 48,
            alignment: Alignment.center,
            child: !loading
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (leading != null) leading!,
                      if (leading != null) const SizedBox(width: 5),
                      Text(
                        title,
                        style: bodyStyle.copyWith(
                          fontWeight:
                              outline ? FontWeight.w400 : FontWeight.bold,
                          color: outline ? kcPrimaryColor : Colors.white,
                        ),
                      ),
                    ],
                  )
                : const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
