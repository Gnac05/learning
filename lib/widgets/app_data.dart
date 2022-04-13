import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/app_constants.dart';

class AppData extends StatelessWidget {
  const AppData({Key? key, required this.index, required this.iscolor})
      : super(key: key);
  final int index;
  final bool iscolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String color_icon = '';
        String multiple = '';
        iscolor ? color_icon = 'color' : color_icon = 'icon';
        switch (index) {
          case 0:
            multiple = '2';
            break;
          case 1:
            multiple = '3';
            break;
          case 2:
            multiple = '5';
            break;
          case 3:
            multiple = '7';
            break;
          default:
            multiple = 'others number first upper 7';
        }
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                      "This $color_icon is display when the counter is multiple of $multiple"),
                ));
      },
      child: iscolor
          ? Container(
              height: 50,
              width: 50,
              color: colors[index],
            )
          : Container(
              height: 50,
              width: 50,
              child: Center(child: icons[index]),
              decoration: const BoxDecoration(color: Colors.blue),
            ),
    );
  }
}
