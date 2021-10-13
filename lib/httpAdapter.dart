import 'package:sthima_challenge/entities/enums/httpAdapterName_enum.dart';
import 'package:http/http.dart' as http;

class HttpAdapter {
  HttpAdapter._privateConstructor();

  static final HttpAdapter _instance = HttpAdapter._privateConstructor();

  static HttpAdapter get instance => _instance;

  Future get(HttpAdapterNameEnum adapterName, String url) async {
    switch (adapterName) {
      case HttpAdapterNameEnum.http:
        http.Client httpClient = http.Client();
        Uri uri = Uri.parse(url);

        var response = await httpClient.get(uri);

        return response;
    }
  }
}
