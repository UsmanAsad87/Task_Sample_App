import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/commons/common_widgets/CustomTextFields.dart';
import 'package:task_sample_app/commons/common_widgets/custom_button.dart';
import 'package:task_sample_app/commons/common_widgets/validator.dart';
import 'package:task_sample_app/features/sample_app_screen/widgets/main_tasks_widget.dart';
import 'package:task_sample_app/features/single_task_screen/widgets/sub_tasks_widget.dart';
import 'package:task_sample_app/routes/route_manager.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class TaskPreviewScreen extends StatelessWidget {
  const TaskPreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grayScale9Color,
      appBar: AppBar(
        backgroundColor: MyColors.grayScale9Color,
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            AppAssets.arrowBackIcon,
            width: 36.w,
            height: 36.w,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(AppConstants.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Task Preview',
                      style: getSemiBoldStyle(
                        fontSize: 30.spMin,
                        color: MyColors.themeColor,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          AppAssets.deleteIcon,
                          width: 46.w,
                          height: 46.w,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              PreviewTile(title: 'Task', subtitle: 'Start working out'),
              PreviewTile(title: 'Type', subtitle: 'Personal Project'),
              PreviewTile(title: 'Priorty', subtitle: 'Nice to have'),
              PreviewTile(title: 'TimeFrame', subtitle: 'Week'),
              PreviewTile(
                  title: 'Description ',
                  subtitle:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod')
            ],
          ),
        ),
      ),
    );
  }
}

class PreviewTile extends StatelessWidget {
  const PreviewTile({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getRegularStyle(
              fontSize: MyFonts.size18,
              color: MyColors.grayScale4Color,
            ),
          ),
          Text(
            subtitle,
            style: getRegularStyle(
              fontSize: MyFonts.size22,
              color: MyColors.grayScale2Color,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: MyColors.grayScale7Color,
            thickness: 2.h,
          ),
        ],
      ),
    );
  }
}
