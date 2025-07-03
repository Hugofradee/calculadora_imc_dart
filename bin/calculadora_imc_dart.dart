

import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:calculadora_imc_dart/utils/imc_calculator.dart';
import 'package:calculadora_imc_dart/utils/terminal_reader.dart';

void main(List<String> arguments) {
  print("---Calculadora de IMC---");

  String nome = TerminalReader.readString('Digite seu nome: ');
  double peso = TerminalReader.readDouble('Digite seu peso (kg): ');
  double altura = TerminalReader.readDouble('Digite sua altura (m): ');

  try {
    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    double imc = IMCCalculator.calcularIMC(pessoa.peso, pessoa.altura);
    String classificacao = IMCCalculator.classificarIMC(imc);

    print('\n--- Resultado para ${pessoa.nome} ---');
    print('IMC: ${imc.toStringAsFixed(2)}');
    print('Classificação: $classificacao');
  } on ArgumentError catch (e) {
    print('Erro: no calculo ${e.message}');
  } catch (e) {
    print('Erro inesperado: $e');
  } finally {
    print('\nObrigado por usar a Calculadora de IMC!');
  }
}
  