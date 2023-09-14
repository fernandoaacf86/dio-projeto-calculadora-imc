import 'dart:math';
import './pessoa.dart';

class CalculadoraImc {
  static calcularImc(Pessoa pessoa) {
    String imc = "";
    double peso = double.parse(pessoa.getPeso());
    double altura = double.parse(pessoa.getAltura());
    try {
      imc = (peso / quadradoAlturaEmMetros(altura)).toStringAsFixed(2);
    } catch (e) {
      print("Error ao calcular imc: $e");
    }
    print("O imc do(a) ${pessoa.getNome()} é: $imc.");
  }

  static double quadradoAlturaEmMetros(double altura) {
    try {
      return pow((altura / 100), 2).toDouble();
    } catch (e) {
      print("Não foi possível transformar a altura em metros.");
      return 0.0;
    }
  }
}
