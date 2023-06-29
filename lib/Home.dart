

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_implementation/Controller.dart';
import 'package:getx_implementation/design_components/icon_button_on_dark.dart';
import 'package:getx_implementation/design_components/icon_button_on_white.dart';
import 'package:getx_implementation/design_components/primary_button.dart';
import 'package:getx_implementation/design_components/primary_button_small.dart';
import 'package:getx_implementation/design_components/secondary_button.dart';
import 'package:getx_implementation/factories/button_factory.dart';
import 'package:getx_implementation/theme/primary_theme.dart';
import 'package:getx_implementation/utils/button_types.dart';

import 'Other.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {

    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar( title: Obx( () => Text("Clicks: ${c.count}",) ) ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //PrimaryButton(title: 'Log In', onPressed: () => Get.to(Other())),
            ButtonFactory.customButton(ButtonTypes.PrimaryButton, 'Log In', () => Get.to(Other()) ),
            const SizedBox(height: 30,),
            IconButtonOnWhite(onPressed: () => Get.to(Other()), icon: Icons.keyboard_arrow_left_sharp),
            const SizedBox(height: 30,),
            IconButtonOnDark(icon: Icons.file_upload_outlined, onPressed: () => Get.to(Other())),
            const SizedBox(height: 30,),
            PrimaryButtonSmall(title: "Book", onPressed: () => Get.to(Other())),
            const SizedBox(height: 30,),
            SecondaryButton(title: "Sign Up", onPressed: () => Get.to(Other()))


          ],
        )
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PrimaryTheme.of(context).greyColor,
        hoverColor: PrimaryTheme.of(context).blueColor,
        onPressed: c.increment,
        child: const Icon(Icons.add),
      ),
    );
    // TODO: implement built
    //  throw UnimplementedError();
  }


}

// child: ElevatedButton(
//   onPressed: () => Get.to(Other()),
//   child: const Text("Go to Other"),
//   style: ButtonStyle(
//     textStyle: MaterialStateProperty.resolveWith(
//             (states) {
//           // If the button is pressed, return size 40, otherwise 20
//           if (states.contains(MaterialState.hovered)) {
//             return TextStyle(fontSize: 40);
//           }
//           return TextStyle(fontSize: 20);
//         }
//     ),
//     backgroundColor: MaterialStateProperty.resolveWith((states) {
//       if(states.contains(MaterialState.hovered)){
//         return PrimaryTheme.of(context).orangeColor;
//       }
//       return PrimaryTheme.of(context).lightBlueColor;
//     }
//
//     ),
//   ),
// ),