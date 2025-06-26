import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UiHelper {

  /// Image
  static CustomImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  /// Text
  static CustomText(
      {required text,
      required Color color,
      required FontWeight fontWeight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontWeight),
    );
  }

  /// TextField
  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: const Color(0XFFC5C5C5)
          )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream'",
            hintStyle: const TextStyle(
              color: AppColors.textgraycolor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Image.asset("assets/images/search.png"),
            suffixIcon: Image.asset("assets/images/mic.png"),
            border: InputBorder.none
        ),
      ),
    );
  }

  /// Mini Button
  static Widget CustomButton({required VoidCallback callback}) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: 30,
        height: 18,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AppColors.btngreencolor),
        ),
        alignment: Alignment.center, // Center child in the container
        child: const Text(
          'ADD',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 6,
            fontWeight: FontWeight.w400,
            fontFamily: 'regular',
            color: AppColors.btngreencolor,
          ),
        ),
      ),
    );
  }

}
