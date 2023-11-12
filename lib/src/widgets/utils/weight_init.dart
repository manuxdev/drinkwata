import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WeightInit extends StatelessWidget {
  WeightInit({required this.mins, super.key});
  int mins;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Center(
          child: Text(
            mins.toString(),
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
        ));
  }
}
