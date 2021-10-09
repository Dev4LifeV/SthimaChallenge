import 'package:azumo_challenge/entities/enums/httpAdapterName_enum.dart';
import 'package:azumo_challenge/entities/models/cat_model.dart';
import 'package:azumo_challenge/gateways/cat_gateway.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check whether CatModel was received', () {
    test('It should receive CatModel', () async {
      CatGateway _gateway = CatGateway(httpAdapter: HttpAdapterNameEnum.http);
      var response = await _gateway.getRandomCat();

      expect(response.id, isNotEmpty);
      expect(response.url, isNotEmpty);
    });

    test("It shouldn't receive CatModel", () async {
      CatGateway _gateway = CatGateway(httpAdapter: HttpAdapterNameEnum.http);
      CatModel? response = await _gateway.getRandomCat();

      response = null;

      expect(response, isNull);
    });
  });
}
