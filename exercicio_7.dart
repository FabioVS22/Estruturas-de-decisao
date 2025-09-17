import 'dart:io';

void main() {
  double saldo = 1000.0;
  print('1-Saldo 2-Saque 3-Depósito');
  stdout.write('Opção: ');
  final op = int.tryParse(stdin.readLineSync() ?? '');
  if (op == 1) { print('Saldo: R\$ ${saldo.toStringAsFixed(2)}'); return; }
  if (op == 2) {
    stdout.write('Saque: ');
    final v = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
    if (v == null || v <= 0) { print('Valor inválido'); return; }
    if (v > saldo) { print('Saldo insuficiente'); return; }
    saldo -= v;
    print('Saque ok. Saldo: R\$ ${saldo.toStringAsFixed(2)}');
    return;
  }
  if (op == 3) {
    stdout.write('Depósito: ');
    final v = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
    if (v == null || v <= 0) { print('Valor inválido'); return; }
    saldo += v;
    print('Depósito ok. Saldo: R\$ ${saldo.toStringAsFixed(2)}');
    return;
  }
  print('Opção inválida');
}
