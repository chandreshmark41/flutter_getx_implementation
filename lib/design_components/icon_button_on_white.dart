import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_implementation/theme/primary_theme.dart';

class IconButtonOnWhite extends StatelessWidget {
  const IconButtonOnWhite({super.key,
  required this.onPressed,
  required this.icon}
  );

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: PrimaryTheme.of(context).greyColor,
          ),
          child: Center(
            child: IconButton(
              iconSize: 30,
              color: PrimaryTheme.of(context).blueColor,
              onPressed: onPressed, icon: Icon(icon),
            ),
          )
        );

  }
}