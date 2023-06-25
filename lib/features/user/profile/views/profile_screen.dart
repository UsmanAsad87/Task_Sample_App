import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../commons/common_libs.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: Text(
          'Settings',
          style: getSemiBoldStyle(fontSize: 16.spMin),
        ),
        centerTitle: true,
        leading:  IconButton(
          onPressed: () {
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: MyColors.grayScale2Color,
            size: 15.h,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h,),
              Text("Setting"),
            ],
          ),
        ),
      ),
    );
  }
}
