import 'package:flutter/material.dart';

import 'custom_floating_actions.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  int counter = 0;

  void onPressButtonPlus() {
    setState(() {
      counter += 1;
    });
  }

  void onPressButtonMinus() {
    setState(() {
      counter -= 1;
    });
  }

  void onPressButtonClear() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Click Counter',
                style: fontSize30,
              ),
              Text(
                "$counter",
                style: fontSize30,
              ),
            ]),
      ),
      floatingActionButton: CustomFloatingActions(
          onPressButtonPlus: onPressButtonPlus,
          onPressButtonClear: onPressButtonClear,
          onPressButtonMinus: onPressButtonMinus),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
