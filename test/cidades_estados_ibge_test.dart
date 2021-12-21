import 'package:flutter_test/flutter_test.dart';

import '../lib/cidades_estados_ibge.dart';

void main() {
  test('getCidades', () {
    final cidades = CidadesEstadosIbge();
    expect(cidades.getUfs(), isNotNull);
  });
}
