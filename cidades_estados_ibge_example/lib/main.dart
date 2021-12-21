import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:cidades_estados_ibge/cidades_estados_ibge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var cidadesEstadosIbge = CidadesEstadosIbge();
    //print(cidadesEstadosIbge.getUfs()[0].nome);
    //print(cidadesEstadosIbge.cidadesPorUf("SC")[0].nome);
    //print(cidadesEstadosIbge.cidadePorIbge(4204202).toJson());
    //print(cidadesEstadosIbge.ufPorIbge(42).toJson());
    print(json.encode(cidadesEstadosIbge.buscaCidadePorNome("são")));
    //print(json.encode(cidadesEstadosIbge.buscaUfPorNome("São")));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
    );
  }
}
