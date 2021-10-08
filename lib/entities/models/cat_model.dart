import 'dart:convert';

class CatModel {
  String? _id;
  String? _url;

  CatModel({required String id, required String url})
      : this._id = id,
        this._url = url;

  factory CatModel.fromJson(String response) {
    Map<String, dynamic> data = json.decode(response);

    String _id = data["id"];
    String _url = data["url"];

    return CatModel(id: _id, url: _url);
  }

  String? get id => this._id;
  String? get url => this._url;
}
