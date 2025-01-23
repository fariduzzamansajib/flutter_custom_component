import 'package:flutter/material.dart';
import 'package:touch/helpers/hex_color.dart';

class SwitchButton extends StatefulWidget {

  @override
  State<SwitchButton> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchButton> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: hexToColor('#E0115F'),
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.black,

        onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
