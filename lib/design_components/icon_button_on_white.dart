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
    // TODO: implement build
    // return IconButton(onPressed: onPressed, icon: Icon(icon) ,
    //     color: PrimaryTheme.of(context).blueColor,
    //   );
    return
      InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onPressed,
        child: Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
                color: PrimaryTheme.of(context).greyColor,
            ),

            child: Icon(
              icon,
              color: PrimaryTheme.of(context).blueColor,
            )
        ),
      );

  }

}