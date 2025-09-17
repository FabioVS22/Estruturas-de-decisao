import 'dart:io';

void main() {
  stdout.write('Valor (R\$): ');
  final v = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
  if (v == null) { print('Valor inválido'); return; }
  final total = v > 100 ? v * 0.90 : v;
  print('Total: R\$ ${total.toStringAsFixed(2)}');
}
