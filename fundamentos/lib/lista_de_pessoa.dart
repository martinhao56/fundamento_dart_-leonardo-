import 'dart:io';

void main() {
  List<Map<String, String>> listaDePessoas = [];

  print('Sistema de Cadastro de Pessoas');
  print('Para encerrar o cadastro, digite "sair".');

  while (true) {
    stdout.write('Informe o nome e o telefone no formato "Nome | Telefone": ');
    String entrada = stdin.readLineSync() ?? '';

    // Verifica se o usuário quer encerrar o cadastro
    if (entrada.toLowerCase() == 'sair') {
      break;
    }

    // Divide a entrada com base no delimitador "|"
    List<String> dados = entrada.split('|');
    if (dados.length == 2) {
      String nome = dados[0].trim();
      String telefone = dados[1].trim();

      // Insere o nome e telefone na lista
      listaDePessoas.add({'nome': nome, 'telefone': telefone});
    } else {
      print('Entrada inválida. Por favor, use o formato "Nome | Telefone".');
    }
  }

  // Exibe a lista de pessoas cadastradas
  print('\nPessoas cadastradas:');
  for (var pessoa in listaDePessoas) {
    String telefone = pessoa['telefone']!;
    // Exibe apenas os registros com telefone de no mínimo 15 caracteres
    if (telefone.length >= 15) {
      print('Nome: ${pessoa['nome']}');
      print('Telefone: $telefone');
      print('---');
    }
  }
}
