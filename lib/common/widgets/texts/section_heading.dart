import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ESectionHeading extends StatelessWidget {
  const ESectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
    this.showActionButton = true,
    this.textColor,
  });

  final String title, buttonTitle;
  final void Function()? onPressed;
  final bool showActionButton;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textColor == null ? dark ? Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white) : Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.black) : Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton) TextButton(
          onPressed: onPressed,
          child: Text(buttonTitle),
        ),
      ],
    );
  }
}

// Theme.of(context).textTheme.headlineSmall!.apply(color: textColor)