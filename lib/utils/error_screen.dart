import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'ERROR HERE',
          style: getBoldStyle(fontSize: 17),
        ),
      ),
    );
  }
}
