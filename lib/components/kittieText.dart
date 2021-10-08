import 'package:flutter/material.dart';

class KittieText extends StatelessWidget {
  final EdgeInsets _margin;

  KittieText(
      {EdgeInsets margin = const EdgeInsets.only(bottom: 20),
      Key key = const Key('KittieText')})
      : this._margin = margin,
        super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: this._margin,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'K',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xffFCDD8D),
                  fontFamily: 'ChivoRegular')),
          TextSpan(
              text: 'I',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff98EFDA),
                  fontFamily: 'ChivoRegular')),
          TextSpan(
              text: 'T',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xffFCDD8D),
                  fontFamily: 'ChivoRegular')),
          TextSpan(
              text: 'T',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff98EFDA),
                  fontFamily: 'ChivoRegular')),
          TextSpan(
              text: 'I',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xffFCDD8D),
                  fontFamily: 'ChivoRegular')),
          TextSpan(
              text: 'E',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff98EFDA),
                  fontFamily: 'ChivoRegular')),
        ]),
      ),
    );
  }
}
