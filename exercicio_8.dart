import 'dart:io';

void main() {
  stdout.write('A: '); final a = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  stdout.write('B: '); final b = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  stdout.write('C: '); final c = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  if (a == null || b == null || c == null) { print('Lado inválido'); return; }
  if (!(a + b > c && a + c > b && b + c > a)) { print('Não forma triângulo'); return; }
  if (a == b && b == c) print('Equilátero');
  else if (a == b || a == c || b == c) print('Isósceles');
  else print('Escaleno');
}
