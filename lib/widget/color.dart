import 'dart:ui';

import 'package:flutter/material.dart';

const Color black = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);
const Color primaryColor = Color(0xff7555f7);
const Color secondaryColor = Colors.amber;
const Color bgColor = Color(0xffd4c9ff);
const Color bgColor2 = Color(0xffe0d9ff);


class Palette { 
  static const MaterialColor myColor = MaterialColor( 
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    <int, Color>{ 
      50: Color(0xff7555f5),//10% 
      100: Color(0xff8366f6),//20% 
      200: Color(0xff9177f7),//30% 
      300: Color(0xff9e88f8),//40% 
      400: Color(0xffac99f9),//50% 
      500: Color(0xffbaaafa),//60% 
      600: Color(0xffc8bbfb),//70% 
      700: Color(0xffd6ccfc),//80% 
      800: Color(0xffe3ddfd),//90% 
      900: Color(0xffe3ddfd),//100% 
    }, 
  ); 
} // y