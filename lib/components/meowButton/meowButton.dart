import 'dart:ui';

import 'package:azumo_challenge/components/meowButton/meowButton_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RPSCustomPainter extends CustomPainter {
  Color? _color;

  RPSCustomPainter({required Color color}) {
    this._color = color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = this._color!.withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.01492537, size.height * 0.04597701,
            size.width * 0.9004975, size.height * 0.7701149),
        paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9154229, size.height * 0.04597701);
    path_1.lineTo(size.width * 0.9452736, size.height * 0.09144874);
    path_1.lineTo(size.width * 0.9452736, size.height * 0.8735632);
    path_1.lineTo(size.width * 0.9154229, size.height * 0.8735632);
    path_1.lineTo(size.width * 0.9154229, size.height * 0.04597701);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffBA2D65).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.01492537, size.height * 0.8160920);
    path_2.lineTo(size.width * 0.9163284, size.height * 0.8160920);
    path_2.lineTo(size.width * 0.9452736, size.height * 0.8735632);
    path_2.lineTo(size.width * 0.03973468, size.height * 0.8735632);
    path_2.lineTo(size.width * 0.01492537, size.height * 0.8160920);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffFF94C2).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2983085, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.2983085, size.height * 0.3333333);
    path_3.lineTo(size.width * 0.2973134, size.height * 0.3333333);
    path_3.lineTo(size.width * 0.2425871, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.2324378, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.1781095, size.height * 0.3333333);
    path_3.lineTo(size.width * 0.1771144, size.height * 0.3333333);
    path_3.lineTo(size.width * 0.1771144, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.1675622, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.1675622, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.1846766, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.2380100, size.height * 0.5889655);
    path_3.lineTo(size.width * 0.2382090, size.height * 0.5889655);
    path_3.lineTo(size.width * 0.2921393, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.3090547, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.3090547, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.2983085, size.height * 0.6206897);
    path_3.close();
    path_3.moveTo(size.width * 0.3543239, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.3543239, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.4387020, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.4367119, size.height * 0.3273563);
    path_3.lineTo(size.width * 0.3650701, size.height * 0.3273563);
    path_3.lineTo(size.width * 0.3650701, size.height * 0.4487356);
    path_3.lineTo(size.width * 0.4285527, size.height * 0.4487356);
    path_3.lineTo(size.width * 0.4285527, size.height * 0.4708046);
    path_3.lineTo(size.width * 0.3650701, size.height * 0.4708046);
    path_3.lineTo(size.width * 0.3650701, size.height * 0.5986207);
    path_3.lineTo(size.width * 0.4385030, size.height * 0.5986207);
    path_3.lineTo(size.width * 0.4406920, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.3543239, size.height * 0.6206897);
    path_3.close();
    path_3.moveTo(size.width * 0.5190547, size.height * 0.6252874);
    path_3.cubicTo(
        size.width * 0.5024726,
        size.height * 0.6252874,
        size.width * 0.4894692,
        size.height * 0.6139460,
        size.width * 0.4800498,
        size.height * 0.5912644);
    path_3.cubicTo(
        size.width * 0.4707627,
        size.height * 0.5682759,
        size.width * 0.4661194,
        size.height * 0.5275092,
        size.width * 0.4661194,
        size.height * 0.4689655);
    path_3.lineTo(size.width * 0.4661194, size.height * 0.4570115);
    path_3.cubicTo(
        size.width * 0.4661194,
        size.height * 0.3984678,
        size.width * 0.4707627,
        size.height * 0.3578540,
        size.width * 0.4800498,
        size.height * 0.3351724);
    path_3.cubicTo(
        size.width * 0.4894692,
        size.height * 0.3121839,
        size.width * 0.5024726,
        size.height * 0.3006897,
        size.width * 0.5190547,
        size.height * 0.3006897);
    path_3.cubicTo(
        size.width * 0.5356368,
        size.height * 0.3006897,
        size.width * 0.5485721,
        size.height * 0.3121839,
        size.width * 0.5578607,
        size.height * 0.3351724);
    path_3.cubicTo(
        size.width * 0.5672786,
        size.height * 0.3578540,
        size.width * 0.5719900,
        size.height * 0.3984678,
        size.width * 0.5719900,
        size.height * 0.4570115);
    path_3.lineTo(size.width * 0.5719900, size.height * 0.4689655);
    path_3.cubicTo(
        size.width * 0.5719900,
        size.height * 0.5275092,
        size.width * 0.5672786,
        size.height * 0.5682759,
        size.width * 0.5578607,
        size.height * 0.5912644);
    path_3.cubicTo(
        size.width * 0.5485721,
        size.height * 0.6139460,
        size.width * 0.5356368,
        size.height * 0.6252874,
        size.width * 0.5190547,
        size.height * 0.6252874);
    path_3.close();
    path_3.moveTo(size.width * 0.5190547, size.height * 0.6032184);
    path_3.cubicTo(
        size.width * 0.5321891,
        size.height * 0.6032184,
        size.width * 0.5424726,
        size.height * 0.5938701,
        size.width * 0.5499005,
        size.height * 0.5751724);
    path_3.cubicTo(
        size.width * 0.5574627,
        size.height * 0.5564747,
        size.width * 0.5612438,
        size.height * 0.5229115,
        size.width * 0.5612438,
        size.height * 0.4744828);
    path_3.lineTo(size.width * 0.5612438, size.height * 0.4514943);
    path_3.cubicTo(
        size.width * 0.5612438,
        size.height * 0.4030655,
        size.width * 0.5574627,
        size.height * 0.3695023,
        size.width * 0.5499005,
        size.height * 0.3508046);
    path_3.cubicTo(
        size.width * 0.5424726,
        size.height * 0.3321069,
        size.width * 0.5321891,
        size.height * 0.3227586,
        size.width * 0.5190547,
        size.height * 0.3227586);
    path_3.cubicTo(
        size.width * 0.5059204,
        size.height * 0.3227586,
        size.width * 0.4955721,
        size.height * 0.3321069,
        size.width * 0.4880100,
        size.height * 0.3508046);
    path_3.cubicTo(
        size.width * 0.4805806,
        size.height * 0.3695023,
        size.width * 0.4768657,
        size.height * 0.4030655,
        size.width * 0.4768657,
        size.height * 0.4514943);
    path_3.lineTo(size.width * 0.4768657, size.height * 0.4744828);
    path_3.cubicTo(
        size.width * 0.4768657,
        size.height * 0.5229115,
        size.width * 0.4805806,
        size.height * 0.5564747,
        size.width * 0.4880100,
        size.height * 0.5751724);
    path_3.cubicTo(
        size.width * 0.4955721,
        size.height * 0.5938701,
        size.width * 0.5059204,
        size.height * 0.6032184,
        size.width * 0.5190547,
        size.height * 0.6032184);
    path_3.close();
    path_3.moveTo(size.width * 0.7501841, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.7601343, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.7203333, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.7111791, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.6775473, size.height * 0.3535632);
    path_3.lineTo(size.width * 0.6767512, size.height * 0.3535632);
    path_3.lineTo(size.width * 0.6431194, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.6339652, size.height * 0.6206897);
    path_3.lineTo(size.width * 0.5941642, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.6057065, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.6389403, size.height * 0.5714943);
    path_3.lineTo(size.width * 0.6397363, size.height * 0.5714943);
    path_3.lineTo(size.width * 0.6729701, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.6829204, size.height * 0.3052874);
    path_3.lineTo(size.width * 0.7161542, size.height * 0.5714943);
    path_3.lineTo(size.width * 0.7169502, size.height * 0.5714943);
    path_3.lineTo(size.width * 0.7501841, size.height * 0.3052874);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffEAEAEA).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MeowButton extends StatelessWidget {
  final MeowButtonController _controller = Get.find<MeowButtonController>();
  Function() _onTap;

  MeowButton({required Function() onTap, Key key = const Key('MeowButton')})
      : this._onTap = onTap,
        super(key: key);

  Widget build(BuildContext context) {
    return Obx(() => InkWell(
          child: CustomPaint(
            size: Size(300, (300 * 0.43283582089552236).toDouble()),
            painter: RPSCustomPainter(color: _controller.onTapColor),
          ),
          onHover: _controller.changeColorHovering,
          onTap: this._onTap,
          onHighlightChanged: _controller.changeColorHovering,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ));
  }
}
