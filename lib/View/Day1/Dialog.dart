import 'package:flutter/material.dart';


class DialogeBox extends StatefulWidget {
  DialogeBox({super.key});

  @override
  State<DialogeBox> createState() => _DialogeState();
}

class _DialogeState extends State<DialogeBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Phone Ringtone'),
                      content: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return SizedBox(
                            height: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Divider(height: 2,),
                                  ...List.generate(
                                    ringtones.length, (index) =>
                                      RadioListTile<String>(
                                        title: Text(ringtones[index]),
                                        value: ringtones[index],
                                        groupValue: selectedRingtone,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedRingtone = value!;
                                          });
                                        },
                                      ),),
                                ]
                              ),
                            ),
                          );
                        },
                      ),
                      actions: [
                        Divider(height: 2,),
                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text('Choose Ringtone'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

String selectedRingtone = 'None';

final List<String> ringtones = [
  'None',
  'Callisto',
  'Ganymede',
  'Luna',
  'Ash',
];

