import 'package:imc_app/models/console_utils.dart';
import 'package:imc_app/models/pessoa.dart';
import 'package:test/test.dart';
import 'valores_test.dart';

void main() {
  Map valores = Valores.valoresConsoleUtils;
  group('testes para console_utils.dart', () {
    valores["testeNumero"]!.forEach((key, value) {
      test('verificarNum()', () {
        expect(ConsoleUtils.verificarNum(key), value);
      });
    });
    valores["verificaNumNaString"]!.forEach((key, value) {
      test('verificaNumNaString()', () {
        expect(ConsoleUtils.verificaNumNaString(key), value);
      });
    });
    valores["verificarSair"]!.forEach((key, value) {
      test('verificarSair()', () {
        expect(ConsoleUtils.verificarSair(key), value);
      });
    });
    valores["testeString"]!.forEach((key, value) {
      test('gerarNome()', () {
        expect(ConsoleUtils.gerarNome(key).runtimeType == String, value);
      });
    });
    valores["numerosApenas"]!.forEach((key, value) {
      test('gerarAltura()', () {
        expect(ConsoleUtils.gerarAltura(key).runtimeType == String, value);
      });
    });
    valores["numerosApenas"]!.forEach((key, value) {
      test('gerarPeso()', () {
        expect(ConsoleUtils.gerarPeso(key).runtimeType == String, value);
      });
    });
  });

  group('pessoa', () {
    valores["objetoPessoa"]!.forEach((key, value) {
      test('criarPessoa', () {
        Pessoa p1 = Pessoa();
        p1.setNome(key[0]);
        p1.setAltura(key[1]);
        p1.setPeso(key[2]);
        expect(p1.runtimeType == Pessoa, value);
      });
    });
  });
}
