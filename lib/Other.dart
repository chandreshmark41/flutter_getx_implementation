

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Controller.dart';

class Other extends StatelessWidget {
  final Controller c  = Get.find();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // You can ask Get to find a Controller that is being used by another page and redirect you to it.
      return Scaffold(body: Center(child:Text("${c.count}")));
    }
  
}