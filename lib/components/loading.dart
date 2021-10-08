import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xffBA2D65).withOpacity(1.0)),
            ),
          ),
          Text(
            "Fetching data...",
          )
        ],
      ),
    );
  }
}
