class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});


  @override
  String toString() {
    return 'Nome: $nome, Peso: $peso kg, Altura: $altura m';
  }
}