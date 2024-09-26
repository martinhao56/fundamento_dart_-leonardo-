import 'dart:io';

void main() {
  // Função para solicitar e validar notas
  double obterNota(String mensagem) {
    double? nota;
    do {
      stdout.write(mensagem);
      nota = double.tryParse(stdin.readLineSync()!);
      if (nota == null || nota < 0 || nota > 10) {
        print("Nota inválida! Digite um valor entre 0 e 10.");
      }
    } while (nota == null || nota < 0 || nota > 10);
    return nota;
  }

  // Solicitar as 4 notas ao usuário
  double nota1 = obterNota("Digite a primeira nota: ");
  double nota2 = obterNota("Digite a segunda nota: ");
  double nota3 = obterNota("Digite a terceira nota: ");
  double nota4 = obterNota("Digite a quarta nota: ");

  // Calcular a média
  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  // Exibir a média
  print("\nMédia: ${media.toStringAsFixed(2)}");

  // Classificar a situação do aluno com base na média
  if (media < 5.0) {
    print("Situação: Reprovado");
  } else if (media >= 5.0 && media < 7.0) {
    print("Situação: Em Recuperação");
  } else {
    print("Situação: Aprovado");
  }
}
