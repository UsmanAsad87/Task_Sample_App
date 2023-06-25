import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool? obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final String labelText;
  final int? maxLines;
  final Widget? trailing;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.obscure,
    this.validatorFn,
    this.icon,
    required this.labelText,
    this.maxLines,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
          color: MyColors.grayScale5Color,
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            labelText,
            style: getSemiBoldStyle(
              fontSize: 12.spMin,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: TextFormField(
              validator: validatorFn ??
                      (val) {
                    if (val!.isEmpty) {
                      return "Please enter some text!";
                    } else {
                      return null;
                    }
                  },
              obscureText: obscure ?? false,
              controller: controller,
              keyboardType: inputType,
              maxLines: maxLines ?? 1,
              style: getRegularStyle(
                  color: Theme.of(context).colorScheme.secondary,fontSize: 12.spMin),
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical:maxLines!=null?10.h: 0.h),
                suffix: trailing ?? SizedBox.shrink(),
                hintText: hintText ?? "",
                hintStyle: getRegularStyle(color: MyColors.grayScale5Color,fontSize: 12.spMin),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.grayScale5Color, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.grayScale5Color, width: 1.0),
                ),
                border: OutlineInputBorder(),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.grayScale5Color, width: 1.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                      Theme.of(context).colorScheme.error.withOpacity(0.2),
                      width: 1.0),
                ),
              ),
              onFieldSubmitted: onFieldSubmitted,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}