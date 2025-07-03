class IMCCalculator {
  static double calcularIMC(double peso, double altura) {
    if (altura <= 0) {
      throw ArgumentError('ERRO: A altura deve ser maior que zero.');
    }
    if (peso <= 0) {
      throw ArgumentError('ERRO: O peso deve ser maior que zero.');
    }
    return peso / (altura * altura);
  }

  static String classificarIMC(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc < 24.9) {
      return 'Peso normal';
    } else if (imc >= 25 && imc < 29.9) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 34.9) {
      return 'Obesidade Grau I';
    } else if (imc >= 35 && imc < 39.9) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III (Mórbida)';
    }
  }
}