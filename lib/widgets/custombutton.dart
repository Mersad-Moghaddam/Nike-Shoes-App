import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool mode;
  final bool loading;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.mode,
      required this.loading});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: mode ? Colors.white : Colors.black,
            border: Border.all(color: Colors.black87, width: 2.2),
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 5,
        ),
        child: Stack(
          children: [
            Visibility(
              visible: loading ? false : true,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: mode ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Visibility(
                visible: loading ? true : false,
                child: const SizedBox(
                    height: 20, width: 20, child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
