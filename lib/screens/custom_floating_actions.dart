import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {
  final Function onPressButtonPlus;
  final Function onPressButtonMinus;
  final Function onPressButtonClear;

  const CustomFloatingActions({
    super.key,
    required this.onPressButtonPlus,
    required this.onPressButtonMinus,
    required this.onPressButtonClear,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => onPressButtonMinus(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          onPressed: () => onPressButtonClear(),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          onPressed: () => onPressButtonPlus(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
