import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonText,
    this.onTap,
  });
  final String? buttonText;
  final Widget? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => onTap!,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(35.0),
        // margin: const EdgeInsets.all(2.0),
        margin: const EdgeInsets.only(left:2.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 12, 54, 192),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 254, 254, 254),
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
