import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.value,
    required this.valueItems,
    required this.onChanged,
    required this.hintText, required this.labelText,
  });

  final String? value;
  final List<String> valueItems;
  final Function(String?) onChanged;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: getRegularStyle(
              fontSize: MyFonts.size18,
              color: MyColors.grayScale2Color,
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: MyColors.black.withOpacity(0.05),
                    blurRadius: 20.spMax,
                    offset: Offset(0, 4.h)),
              ],

              //border: Border.all(width: 0.5,color:  Theme.of(context).colorScheme.onPrimary.withOpacity(0.2))
            ),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            height: 50.h,
            width: double.infinity,
            child: DropdownButton(
                dropdownColor: Colors.white,
                hint: Text(
                  hintText,
                  style: getRegularStyle(
                      color: MyColors.grayScale2Color, fontSize: MyFonts.size16),
                ),
                //menuMaxHeight: 250.h,
                isExpanded: true,
                //dropdownColor: kTextFieldColor,
                borderRadius: BorderRadius.circular(10),
                underline: SizedBox(),
                icon: ImageIcon(
                  const AssetImage(AppAssets.dropDownIcon),
                  size: 16.h,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                value: value,
                focusColor: MyColors.themeColor,
                style: getRegularStyle(
                    color: MyColors.grayScale2Color, fontSize: MyFonts.size16),
                onChanged: onChanged,
                items: valueItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}
