// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  String _nome = "";
  String _peso = "";
  String _altura = "";

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(String peso) {
    _peso = peso;
  }

  String getPeso() {
    return _peso;
  }

  void setAltura(String altura) {
    _altura = altura;
  }

  String getAltura() {
    return _altura;
  }
}
