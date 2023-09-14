class Valores {
  static Map<String, Map> valoresConsoleUtils = {
    "verificaNumNaString": {
      "nome": false,
      "n0m3": true,
      "a1b2c3": true,
      "123,abc,789": true,
    },
    "verificarSair": {
      "sair": true,
      "SAIR": true,
      "sAiR": true,
      "": false,
      " ": false,
      "sari": false,
    },
    "testeString": {
      "nome": true,
      " nome com espaços ": true,
    },
    "testeNumero": {
      "nome": false,
      "10": true,
      " nome com espaços ": false,
      "": false,
      " ": false,
      "1,98765": false,
      "1.98765": true,
      "1 1 1": false,
      "a1b2c3": false,
      "123,456,789": false,
    },
    "numerosApenas": {
      "10": true,
      "1.1": true,
    },
    "objetoPessoa": {
      ["Nome", "100", "200"]: true,
      [" Nome Com Espaço ", "170.3", "180.8"]: true,
    }
  };
}
