import 'dart:io';

void main() {
  stdout.write('Salário: ');
  final s = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  if (s == null) { print('Salário inválido'); return; }
  final imposto = (s <= 1903.98) ? 0.0
    : (s <= 2826.65) ? s * 0.075
    : (s <= 3751.05) ? s * 0.15
    : (s <= 4664.68) ? s * 0.225
    : s * 0.275;
  print(imposto == 0 ? 'Isento' : 'Imposto: R\$ ${imposto.toStringAsFixed(2)}');
}
