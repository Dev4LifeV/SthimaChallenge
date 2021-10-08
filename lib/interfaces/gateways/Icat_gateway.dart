import 'package:azumo_challenge/entities/enums/httpAdapterName_enum.dart';
import 'package:azumo_challenge/entities/models/cat_model.dart';

abstract class ICatGateway {
  Future<CatModel> getRandomCat();
}
