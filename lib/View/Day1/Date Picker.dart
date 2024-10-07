import 'package:flutter/material.dart';

class DuckedDataScreen extends StatelessWidget {
  const DuckedDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            TextField(
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Date',
                  hintText: 'MM/DD/YYYY',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today,),
                ),
                onTap: () async {
                  DateTime? selectedDate = await
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          colorScheme: const ColorScheme.light(
                            primary: Colors.green,
                            onPrimary: Color(0xffe5ebdd),
                            onSurface: Colors.black,
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  print(selectedDate);
                }
            ),
          ],
        ),
      ),
    );
  }
}