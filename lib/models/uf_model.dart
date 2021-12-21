import 'dart:convert';

List<UfModel> ufFromJson(String str) =>
    List<UfModel>.from(json.decode(str).map((x) => UfModel.fromJson(x)));

String ufToJson(List<UfModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UfModel {
  int? ibge;
  String? nome;
  String? sigla;

  UfModel({this.ibge, this.nome, this.sigla});

  UfModel.fromJson(Map<String, dynamic> json) {
    ibge = json['ibge'];
    nome = json['nome'];
    sigla = json['sigla'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ibge'] = this.ibge;
    data['nome'] = this.nome;
    data['sigla'] = this.sigla;
    return data;
  }
}
