import 'dart:io';

class TerminalReader {
  static String readString(String prompt) {
    String? input;
    do {
      stdout.write(prompt);
      input = stdin.readLineSync();
      if (input == null || input.trim().isEmpty) {
        print('Entrada inválida. Tente novamente.');
      }
    } while (input == null || input.trim().isEmpty);
    return input;
  }

  static double readDouble(String prompt) {
    double? value;
    while (value == null) {
      stdout.write(prompt);
      String? input = stdin.readLineSync();
      try {
        if (input != null && input.isNotEmpty) {
          value = double.parse(input.replaceAll(',', '.'));
        } else {
          print('Entrada vazia. Tente novamente.');
        }
      } on FormatException {
        print('Erro: Valor inválido. Por favor, digite um número válido');
      }
    }
    return value;
  }
}