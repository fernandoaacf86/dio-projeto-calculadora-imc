import 'package:imc_app/imc_app.dart';

void main(List<String> arguments) {
  try {
    executarPrograma();
  } catch (e) {
    print("Nao foi possível executar: error: $e.");
  }
}
