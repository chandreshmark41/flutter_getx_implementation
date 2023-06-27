import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/primary_theme.dart';

class IconButtonOnDark extends StatelessWidget {

  final VoidCallback onPressed;
  final IconData icon;

  const IconButtonOnDark({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: PrimaryTheme.of(context).whiteColor,
        ),
        child: Center(
          child: IconButton(
            color: PrimaryTheme.of(context).blueColor,
            iconSize: 30,
            onPressed: onPressed, icon: Icon(icon),
          ),
        )
    );

  }

}