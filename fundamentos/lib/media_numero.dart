import 'dart:io';

void main() {

  List<double> notas = [];

  for (int i = 1; i <= 4; i++) {
    stdout.write('Digite a nota $i: ');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  double media = notas.reduce((a, b) => a + b) / notas.length;

  print('Média: $media');

  if (media >= 6.0) {
    print('Aprovado');
  } else if (media >= 5.0 && media < 6.0) {
    print('Recuperação');
  } else {
    print('Reprovado');
  }
}
