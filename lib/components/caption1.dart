import 'package:flutter/material.dart';

class Caption1 extends StatelessWidget {
  final EdgeInsets _margin;
  final String _text;

  Caption1(
      {required String text,
      EdgeInsets margin = const EdgeInsets.symmetric(vertical: 20),
      Key key = const Key('Caption1')})
      : this._text = text,
        this._margin = margin,
        super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: _margin,
      child: Text(this._text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'ChivoRegular',
              fontStyle: FontStyle.normal,
              fontSize: 40)),
    );
  }
}
