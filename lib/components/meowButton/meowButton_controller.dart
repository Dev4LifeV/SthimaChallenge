import 'package:sthima_challenge/entities/models/cat_model.dart';
import 'package:sthima_challenge/gateways/cat_gateway.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../entities/enums/httpAdapterName_enum.dart';

class MeowButtonController extends GetxController {
  final CatGateway _gateway = CatGateway(httpAdapter: HttpAdapterNameEnum.http);
  Rx<Color> _onTapColor = Rx<Color>(Color(0xffF06292));
  Rxn<CatModel> _cat = Rxn<CatModel>();
  RxBool _isLoading = RxBool(false);
  RxBool _showError = RxBool(false);

  Color get onTapColor => _onTapColor.value;
  CatModel? get cat => _cat.value;
  bool get isLoading => _isLoading.value;
  bool get showError => _showError.value;

  void changeColorHovering(bool hovering) {
    hovering
        ? _onTapColor.value = Color(0xffEC407A)
        : _onTapColor.value = Color(0xffF06292);
  }

  void fetchData() async {
    try {
      _showError.value = false;
      _isLoading.value = true;
      _cat.value = await _gateway.getRandomCat();
      _isLoading.value = false;
    } catch (err) {
      _isLoading.value = false;
      _showError.value = true;
    }
  }
}
