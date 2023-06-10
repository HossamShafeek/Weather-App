import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/config/icons/icons_broken.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, this.color}) : super(key: key);
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Icon(
        IconBroken.Arrow___Left_2,
        size: 28.sp,
        color: color,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
