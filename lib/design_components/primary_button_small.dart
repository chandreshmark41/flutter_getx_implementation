
import 'package:flutter/material.dart';
import 'package:getx_implementation/theme/primary_theme.dart';

class PrimaryButtonSmall extends StatelessWidget {

  const PrimaryButtonSmall(
      {super.key,
        required this.title,
        required this.onPressed,}
      );

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 40,
      // width: 125,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                )
            ),
            backgroundColor: MaterialStateProperty.resolveWith((states) =>
            PrimaryTheme.of(context).blueColor)
        ),
        onPressed: onPressed,
        child: Text(title, style: PrimaryTheme.of(context).bodyTextNormalWhite,),
      ),
    );
  }
}