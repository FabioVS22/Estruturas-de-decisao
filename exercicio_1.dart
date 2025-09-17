import 'dart:io';

void main() {
  stdout.write('Idade: ');
  final n = int.tryParse(stdin.readLineSync() ?? '');
  if (n == null) { print('Idade inválida'); return; }
  print(n >= 16 ? 'Apto a votar' : 'Não apto a votar');
}

