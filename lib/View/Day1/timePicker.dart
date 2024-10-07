import 'package:flutter/material.dart';

class TimePickerDial extends StatelessWidget {
  const TimePickerDial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Dial'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: const TimeOfDay(hour: 0, minute: 0),
              builder: (BuildContext context, Widget? child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    primaryColor: Colors.blue,
                    hintColor: Colors.orange,
                    colorScheme: const ColorScheme.light(primary: Colors.green),
                    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
                  ),
                  child: child ?? const SizedBox.shrink(),
                );
              },
            );
          },
          child: const Text('Pick Time'),
        ),
      ),
    );
  }
}