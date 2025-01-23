import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {

  String? _selectedOption = 'Distance';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Renting Type')
        ],),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio<String>(
                  value: 'Distance',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                Text('Distance'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Hourly',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                Text('Hourly'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Days',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                Text('Days'),
              ],
            ),
          ],
        ),
      ],
    );


  }
}
