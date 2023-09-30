import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 33,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(buttonTitle),
      ),
    );
  }
}
