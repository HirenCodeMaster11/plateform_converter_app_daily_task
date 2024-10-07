import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerTask extends StatefulWidget {
  const CupertinoDatePickerTask({super.key});

  @override
  State<CupertinoDatePickerTask> createState() => _CupertinoDatePickerTaskState();
}

class _CupertinoDatePickerTaskState extends State<CupertinoDatePickerTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 260,
            child: CupertinoDatePicker(onDateTimeChanged: (value) {
              print(value);
            },),
          ),
        ],
      ),
    );
  }
}
