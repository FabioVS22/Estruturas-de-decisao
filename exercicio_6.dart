import 'dart:io';

void main() {
  final menu = {
    1: ['Pasta', 25.0],
    2: ['Frango', 20.0],
    3: ['Risoto', 30.0],
    4: ['Salada', 15.0],
  };
  menu.forEach((k, v) => print('$k - ${v[0]} - R\$ ${(v[1] as double).toStringAsFixed(2)}'));
  stdout.write('Opção: ');
  final opt = int.tryParse(stdin.readLineSync() ?? '');
  if (opt == null || !menu.containsKey(opt)) { print('Opção inválida'); return; }
  final item = menu[opt]!;
  print('Escolhido: ${item[0]} - R\$ ${(item[1] as double).toStringAsFixed(2)}');
}
