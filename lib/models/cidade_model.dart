import 'dart:convert';

List<CidadeModel> cidadeFromJson(String str) => List<CidadeModel>.from(
    json.decode(str).map((x) => CidadeModel.fromJson(x)));

String cidadeToJson(List<CidadeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CidadeModel {
  int? estadoIbge;
  String? siglaUF;
  int? ibge;
  String? nome;

  CidadeModel({this.estadoIbge, this.siglaUF, this.ibge, this.nome});

  CidadeModel.fromJson(Map<String, dynamic> json) {
    estadoIbge = json['estado_ibge'];
    siglaUF = json['sigla_uf'];
    ibge = json['ibge'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['estado_ibge'] = this.estadoIbge;
    data['sigla_uf'] = this.siglaUF;
    data['ibge'] = this.ibge;
    data['nome'] = this.nome;
    return data;
  }
}
