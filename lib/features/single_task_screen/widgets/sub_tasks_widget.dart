import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';

class SubTaskWidget extends StatelessWidget {
  const SubTaskWidget({
    super.key,
    required this.dateTime,
    required this.title,
    required this.onTap,
  });

  final String dateTime;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: 103.h,
        margin: EdgeInsets.only(bottom: 20.h),
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 30.w),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: MyColors.black.withOpacity(0.05),
                  blurRadius: 20.spMax,
                  offset: Offset(0, 4.h)),
            ],
            gradient: const LinearGradient(
              colors: [
                MyColors.white,
                MyColors.gradientTaskColor,
              ],
            ),
            borderRadius: BorderRadius.circular(16.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: getRegularStyle(
                        color: MyColors.grayScale3Color,
                        fontSize:  MyFonts.size22),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    dateTime,
                    style: getRegularStyle(
                        color: MyColors.grayScale5Color,
                        fontSize: MyFonts.size14),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.h,),
            Image.asset(
              AppAssets.arrowForwardIcon,
              width: 28.h,
              height: 28.h,
            ),
          ],
        ),
      ),
    );
  }
}
