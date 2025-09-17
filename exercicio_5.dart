import 'dart:io';

void main() {
  stdout.write('Usuário: ');
  final u = stdin.readLineSync() ?? '';
  stdout.write('Senha: ');
  final s = stdin.readLineSync() ?? '';
  print(u == 'admin' && s == '1234' ? 'Acesso concedido' : 'Acesso negado');
}
