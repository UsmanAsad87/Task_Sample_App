import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/features/sample_app_screen/widgets/main_tasks_widget.dart';
import 'package:task_sample_app/routes/route_manager.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class SampleAppScreen extends StatelessWidget {
  const SampleAppScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grayScale9Color,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(AppConstants.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Sample App',
                style: getSemiBoldStyle(
                  fontSize:MyFonts.size32,
                  color: MyColors.themeColor,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              MainTaskWidget(noTasks: 6, name: 'Task', onTap: (){
                Navigator.pushNamed(context, AppRoutes.singleTaskScreen);
              })


            ],
          ),
        ),
      ),
    );
  }
}
