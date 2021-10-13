import 'package:sthima_challenge/entities/enums/httpAdapterName_enum.dart';
import 'package:sthima_challenge/entities/models/cat_model.dart';
import 'package:sthima_challenge/httpAdapter.dart';
import 'package:sthima_challenge/interfaces/gateways/Icat_gateway.dart';

import '../environments.dart';
import 'package:http/http.dart' as http;

class CatGateway implements ICatGateway {
  final String _caatasUri = caatasUrl;
  final HttpAdapter _httpClient = HttpAdapter.instance;
  final HttpAdapterNameEnum _httpAdapter;

  CatGateway({required HttpAdapterNameEnum httpAdapter})
      : this._httpAdapter = httpAdapter;

  @override
  Future<CatModel> getRandomCat() async {
    late http.Response response;
    try {
      response = await this._httpClient.get(this._httpAdapter, _caatasUri);
    } catch (err) {
      throw err;
    }
    return CatModel.fromJson(response.body);
  }
}
