import 'package:flutter/material.dart';
import 'package:getx_implementation/design_components/primary_button.dart';
import 'package:getx_implementation/design_components/primary_button_small.dart';
import 'package:getx_implementation/design_components/secondary_button.dart';
import 'package:getx_implementation/utils/button_types.dart';

class ButtonFactory {


  // final String title;
  // final VoidCallback onPressed;
  //
  // ButtonFactory({required this.title, required this.onPressed});

  static Widget customButton(ButtonTypes buttonTypes, String title, VoidCallback onPressed) {
    if(buttonTypes == ButtonTypes.PrimaryButton){
      return PrimaryButton(title: title, onPressed: onPressed);
    }
    else if(buttonTypes == ButtonTypes.PrimaryButtonSmall){
      return PrimaryButtonSmall(title: title, onPressed: onPressed);
    }
    else {
      return SecondaryButton(title: title, onPressed: onPressed);
    }
  }
}