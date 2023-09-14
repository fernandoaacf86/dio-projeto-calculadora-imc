import './models/pessoa.dart';
import './models/console_utils.dart';
import './models/calculadora.dart';

void executarPrograma() {
  print("Bem vindo ao Calculador de IMC");
  bool loop = true;
  do {
    Pessoa p1 = Pessoa();
    print("Digite sair em qualquer momento para finalizar.");
    while (true) {
      //gerar nome
      p1.setNome(ConsoleUtils.gerarNome());
      if (p1.getNome() == "sair") {
        loop = false;
        break;
      }
      //gerar peso
      p1.setPeso(ConsoleUtils.gerarPeso());
      if (p1.getPeso() == "sair") {
        loop = false;
        break;
      }
      //gerar altura
      p1.setAltura(ConsoleUtils.gerarAltura());
      if (p1.getAltura() == "sair") {
        loop = false;
        break;
      }
      CalculadoraImc.calcularImc(p1);
    }
  } while (loop);
}
