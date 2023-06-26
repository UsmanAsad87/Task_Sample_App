import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';

import '../../../../../commons/common_libs.dart';


class ExpandDropDownWidget extends StatefulWidget {
  const ExpandDropDownWidget({
    super.key,
    this.initiallyExpanded, this.value, required this.valueItems, required this.onChanged, required this.hintText, required this.labelText,
  });
  final bool? initiallyExpanded;
  final String? value;
  final List<String> valueItems;
  final Function(String?) onChanged;
  final String hintText;
  final String labelText;

  @override
  State<ExpandDropDownWidget> createState() => _ExpandDropDownWidgetState();
}

class _ExpandDropDownWidgetState extends State<ExpandDropDownWidget> {
  bool isExpanded=false;
  String selected='';
  @override
  void initState() {
    selected=widget.value??'';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: getRegularStyle(
              fontSize: MyFonts.size18,
              color: MyColors.grayScale2Color,
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: isExpanded?MyColors.themeColor:Colors.white, width: 1.h),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1.w, 1.h),
                  blurRadius: 2.r,
                  color: Colors.black.withOpacity(0.2),
                )
              ],
            ),
            child: ListTileTheme(
              contentPadding: EdgeInsets.zero,
              dense: true,
              horizontalTitleGap: 0,
              minLeadingWidth: 0,
              minVerticalPadding: 0,
              child: ExpansionTile(
                key: GlobalKey(),
                onExpansionChanged: (val){
                  setState(() {
                    isExpanded=val;
                  });
                },
                collapsedBackgroundColor: Colors.white,
                initiallyExpanded: isExpanded ,
                maintainState: true,
                backgroundColor: MyColors.white,
                tilePadding: EdgeInsets.symmetric(horizontal: 8.h),
                iconColor: MyColors.themeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: MyColors.grayScale2Color,
                childrenPadding: const EdgeInsets.all(0),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    selected,
                    style: getRegularStyle(
                        color: MyColors.grayScale2Color, fontSize: MyFonts.size16),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ImageIcon(
                    AssetImage(isExpanded?AppAssets.dropUpIcon:AppAssets.dropDownIcon),
                    size: 16.h,
                  ),
                ),
                children: <Widget>[
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.valueItems.length,
                      itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selected=widget.valueItems[index];
                          isExpanded=!isExpanded;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 8.h),
                        child: Text(
                          widget.valueItems[index],
                          style: getRegularStyle(
                              color: MyColors.grayScale2Color, fontSize: MyFonts.size16),
                        ),
                      ),
                    );
                  }),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
