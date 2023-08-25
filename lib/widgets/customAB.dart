import 'package:day15_shoes/widgets/const.dart';
import 'package:flutter/material.dart';

class CAB extends StatelessWidget {
  final String title;
  final String number;

  const CAB({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 18, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: Const.headTextStyle),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(number,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ))))
            ],
          )),
    );
  }
}
