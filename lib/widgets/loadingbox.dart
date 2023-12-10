import 'package:chatapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingBox extends StatelessWidget {
  const LoadingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
      ),
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
          ),
          child:  LoadingAnimationWidget.hexagonDots(
            color: Color(AppColor.primaryColor),
            size: 50,
          ),
        ),
      ),
    );
  }
}
