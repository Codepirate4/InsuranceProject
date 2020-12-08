import 'package:flutter/material.dart';

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem({Key key, this.icon, this.text, this.onPressed})
      : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}