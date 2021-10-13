import 'package:sthima_challenge/entities/models/cat_model.dart';

abstract class ICatGateway {
  Future<CatModel> getRandomCat();
}
