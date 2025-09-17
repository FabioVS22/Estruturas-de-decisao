import 'dart:io';

void main() {
  stdout.write('Peso (kg): ');
  final p = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  stdout.write('Altura (m): ');
  final h = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  if (p == null || h == null || h <= 0) { print('Dados inválidos'); return; }
  final imc = p / (h * h);
  print('IMC: ${imc.toStringAsFixed(2)}');
  if (imc < 18.5) print('Abaixo do peso');
  else if (imc < 25) print('Peso normal');
  else if (imc < 30) print('Sobrepeso');
  else if (imc < 35) print('Obesidade grau 1');
  else if (imc < 40) print('Obesidade grau 2');
  else print('Obesidade grau 3');
}
