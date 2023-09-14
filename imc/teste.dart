import 'dart:math';
import './imc_app/lib/models/pessoa.dart';

class CalculadoraImc {
  static calcularImc(Pessoa pessoa) {
    String imc = "";
    double peso = double.parse(pessoa.getPeso());
    double altura = double.parse(pessoa.getAltura());
    if (altura <= 0) {
      print("Não foi possível calcular IMC. Altura = $altura.");
    } else {
      try {
        imc = (peso / quadradoAlturaEmMetros(altura)).toStringAsFixed(2);
        print("O imc do(a) ${pessoa.getNome()} é: $imc.");
      } catch (e) {
        print("Error ao calcular imc: $e");
      }
    }
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

void main(List<String> args) {
  Pessoa p1 = Pessoa();
  p1.setAltura("0");
  p1.setNome("Fernado");
  p1.setPeso("100");

  print(CalculadoraImc.calcularImc(p1));
}
