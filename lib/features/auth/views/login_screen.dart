import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/commons/common_widgets/CustomTextFields.dart';
import 'package:task_sample_app/commons/common_widgets/custom_button.dart';
import 'package:task_sample_app/commons/common_widgets/validator.dart';
import 'package:task_sample_app/routes/route_manager.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class UserLoginScreen extends ConsumerStatefulWidget {
  const UserLoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends ConsumerState<UserLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  // GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  var passObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  // login() async {
  //   if (loginKey.currentState!.validate()) {
  //     final authCtr = ref.read(authControllerProvider.notifier);
  //     await authCtr.signInUserWithEmailAndPassword(
  //         email: _emailController.text,
  //         password: _passController.text,
  //         context: context);
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body:
      // Text("usman"),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 60.w),
                child: Text(
                  'Please login to effortlessly monitor your solar panel readings',
                  style: getRegularStyle(
                    fontSize: 12.spMin,
                    color: MyColors.grayScale5Color,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  CustomTextField(
                    controller: _emailController,
                    validatorFn: emailValidator,
                    onChanged: (val) {},
                    onFieldSubmitted: (val) {},
                    labelText: 'Email Address',
                    hintText: 'Type email address here',
                  ),
                  CustomTextField(
                    controller: _emailController,
                    validatorFn: emailValidator,
                    onChanged: (val) {},
                    onFieldSubmitted: (val) {},
                    labelText: 'Email Address',
                    hintText: 'Type email address here',
                  ),

                ],
              ),
              SizedBox(
                height: 10.h,
              ),


              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onPressed: (){
                },
                buttonText: 'Login',
                // isLoading: ref.watch(authControllerProvider),
                backColor: MyColors.theme2Color,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have a account? ",style: getRegularStyle(fontSize: 12.spMin,color: MyColors.grayScale2Color),),
                  GestureDetector(onTap:(){
                  },child: Text("Register ",style: getMediumStyle(fontSize: 12.spMin,color: MyColors.themeColor),)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
