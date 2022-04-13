import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// class AppCounter {
//   incrementation() {
//     counter++;
//   }

//   decrementation() {
//     counter--;
//   }

//   doubleCounter() {
//     counter *= 2;
//   }
// }

int counter = 0;

final int random1 = Random().nextInt(50);
final int random2 = Random().nextInt(100);
final int random3 = Random().nextInt(150);
final int random4 = Random().nextInt(200);

Color c1 = Color.fromARGB(255, 66, random1, 43); //2
Color c2 = Color.fromARGB(255, 66, 103, random2); //3
Color c3 = Color.fromARGB(random3, 66, 240, 50); //5
Color c4 = Color.fromARGB(255, 66, random4, 90); //7
Color c = Colors.black;
var colors = [c1,c2,c3,c4,c];

FaIcon i1 =const FaIcon(FontAwesomeIcons.cog,color: Colors.white) ;
FaIcon i2 =const FaIcon(FontAwesomeIcons.cogs,color: Colors.white) ;
FaIcon i3 =const FaIcon(FontAwesomeIcons.crow,color: Colors.black) ;
FaIcon i4 =const FaIcon(FontAwesomeIcons.crown,color: Colors.white) ;
FaIcon i=const FaIcon(FontAwesomeIcons.fingerprint,color: Colors.white,);
var icons =[i1,i2,i3,i4,i];


