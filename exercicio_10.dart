import 'dart:io';
import 'dart:math';

void main() {
  final rnd = Random();
  final secreto = rnd.nextInt(100) + 1;
  while (true) {
    stdout.write('Palpite: ');
    final p = int.tryParse(stdin.readLineSync() ?? '');
    if (p == null) { print('Entrada inválida'); continue; }
    if (p == secreto) { print('Acertou'); break; }
    print(p > secreto ? 'Muito alto' : 'Muito baixo');
  }
}
