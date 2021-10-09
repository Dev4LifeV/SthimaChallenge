import 'package:azumo_challenge/components/caption2.dart';
import 'package:azumo_challenge/components/kittieText.dart';
import 'package:azumo_challenge/components/loading.dart';
import 'package:azumo_challenge/components/meowButton/meowButton.dart';
import 'package:azumo_challenge/components/meowButton/meowButton_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'environments.dart';

import 'components/caption1.dart';

void main() {
  runApp(GetMaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final MeowButtonController _controller = Get.put(MeowButtonController());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
          child: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => _controller.isLoading
              ? LoadingIndicator()
              : _controller.showError
                  ? _getError()
                  : _controller.cat != null
                      ? _getImage(getUrlFormated() + _controller.cat!.url!)
                      : _getCaptions()),
          _getButton()
        ])),
      )),
    );
  }

  Widget _getImage(String url) {
    return Container(
      width: MediaQuery.of(Get.context!).size.width * 0.8,
      height: MediaQuery.of(Get.context!).size.height * 0.8,
      child: Image.network(
        url,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _getCaptions() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getCat(),
        Caption1(text: 'TAKE ME'),
        Caption2(text: 'TO A'),
        KittieText(),
      ],
    );
  }

  Widget _getError() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Caption1(text: 'SORRY! :('),
        Caption2(
            text: 'An error has ocurred. Please try again or contact support.'),
      ],
    );
  }

  Widget _getCat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('./lib/assets/cat-baloons.png',
            width: MediaQuery.of(Get.context!).size.width * 0.2,
            height: MediaQuery.of(Get.context!).size.height * 0.2,
            fit: BoxFit.contain)
      ],
    );
  }

  Widget _getButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MeowButton(
          onTap: _controller.isLoading ? () => null : _controller.fetchData,
        )
      ],
    );
  }
}
