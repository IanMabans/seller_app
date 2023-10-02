import 'package:flutter/cupertino.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

Widget productImages({ required label, onPress}) {
  return "$label".text.bold.color(fontGrey).makeCentered().box.color(lightGrey).size(100, 100).roundedSM.make();
}