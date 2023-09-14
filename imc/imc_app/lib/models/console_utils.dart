import 'dart:io';
import 'dart:convert';

class ConsoleUtils {
  //verifica números entre as letras ou, sequência de numeros como 123,456,789,963,
  static bool verificaNumNaString(String nome) {
    for (var i = 0; i < 10; i++) {
      if (nome.contains(i.toString())) {
        // teste = true;
        return true;
      }
    }
    return false;
  }

  /*verifica a necessidade de se usar o lerConsole()
  ou não, devido ao envio do input - usado para test()*/
  static String stdinOuString(String variavel, [String? input]) {
    if (input == null) {
      print("Digite $variavel:");
      return lerConsole();
    } else {
      return input;
    }
  }

  //verifica se a string lida no console pode virar um double (um numero)
  static bool verificarNum(String nome) {
    return double.tryParse(nome) is double && double.tryParse(nome)! > 0.0 ? true : false;
  }

  //leitura do console
  static String lerConsole() => stdin.readLineSync(encoding: utf8).toString().trim();
  //verifica se foi digitado sair para finalizar o loop.
  static bool verificarSair(String string) => string.toLowerCase() == "sair" ? true : false;

// gerarNome() gerarPeso() gerarAltura() -----------------
  static String gerarNome([String? input]) {
    String? nome;
    do {
      nome = stdinOuString("o Nome", input);
      if (verificarSair(nome)) {
        nome = nome.toLowerCase();
        break;
      } else {
        if (verificarNum(nome)) {
          print("Formato do nome '$nome', não é alfabético.");
          continue;
        } else if (nome.isEmpty) {
          print("Nome vazio.");
          continue;
        } else if (verificaNumNaString(nome)) {
          print("Formato do nome '$nome', não é alfabético.");
          continue;
        } else {
          break;
        }
      }
    } while (true);
    return nome;
  }

  static String gerarPeso([String? peso]) {
    String? stringPeso;
    //em kg
    do {
      stringPeso = stdinOuString("o Peso em kg", peso);

      if (verificarNum(stringPeso)) {
        break;
      } else {
        if (verificarSair(stringPeso)) {
          stringPeso = stringPeso.toLowerCase();
          break;
        } else {
          print("O valor digitado '$stringPeso', não é um número válido.\nDigite um valor válido.");
        }
      }
    } while (true);
    return stringPeso;
  }

  static String gerarAltura([String? altura]) {
    String? stringAltura;
    //em centímetros
    do {
      stringAltura = stdinOuString("a altura em cm", altura);
      if (verificarNum(stringAltura)) {
        break;
      } else {
        if (verificarSair(stringAltura)) {
          stringAltura = stringAltura.toLowerCase();
          break;
        } else {
          print("O valor digitado '$stringAltura', não é um número.");
          continue;
        }
      }
    } while (true);
    return stringAltura;
  }
}
