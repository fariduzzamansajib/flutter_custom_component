import 'package:flutter/material.dart';

class CircleButtonComponent extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  final double border;
  final double padding;

  const CircleButtonComponent({
    super.key,
    required this.onTap,
    required this.child,
    this.border = 2.0,
    this.padding = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: border),
          shape: BoxShape.circle,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: child,
          ),
        ),
      ),
    );
  }
}
