import 'package:flutter/material.dart';

class text_style extends StatelessWidget {
  const text_style(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
