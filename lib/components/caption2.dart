import 'package:flutter/material.dart';

class Caption2 extends StatelessWidget {
  final EdgeInsets _margin;
  final String _text;

  Caption2(
      {required String text,
      EdgeInsets margin = const EdgeInsets.only(bottom: 20),
      Key key = const Key('Caption2')})
      : this._text = text,
        this._margin = margin,
        super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: this._margin,
      child: Text(this._text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'ChivoRegular',
              fontStyle: FontStyle.normal,
              fontSize: 25)),
    );
  }
}
