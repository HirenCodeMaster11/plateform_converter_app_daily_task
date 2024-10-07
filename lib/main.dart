import 'package:flutter/material.dart';

import 'View/Day1/Cupertino Date Picker.dart';
import 'View/Day1/Date Picker.dart';
import 'View/Day1/Dialog.dart';
import 'View/Day1/cupertino_time_picker.dart';
import 'View/Day1/timePicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => TimePickerDial(),
      },
    );
  }
}
