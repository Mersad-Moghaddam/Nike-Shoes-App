import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool mode;
  final VoidCallback onDTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.mode,
    required this.onDTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDTap,
      onLongPress: onTap,
      child: Container(
        height: 40.0,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: mode ? Colors.transparent : Colors.white,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(),
        child: Stack(
          children: [
            Visibility(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: mode ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
