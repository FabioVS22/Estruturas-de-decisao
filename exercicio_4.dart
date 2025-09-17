import 'dart:io';

void main() {
  stdout.write('Nota 1: ');
  final a = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  stdout.write('Nota 2: ');
  final b = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  if (a == null || b == null) { print('Notas inválidas'); return; }
  final m = (a + b) / 2;
  print('Média: ${m.toStringAsFixed(2)}');
  print(m >= 7 ? 'Aprovado' : (m >= 4 ? 'Recuperação' : 'Reprovado'));
}
