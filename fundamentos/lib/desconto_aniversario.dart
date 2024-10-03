import 'dart:io';

void main() {
  // Solicita as informações do produto ao usuário
  print("Digite o código do produto:");
  String? codigoProduto = stdin.readLineSync();

  print("Digite o preço unitário do produto:");
  double precoUnitario = double.parse(stdin.readLineSync()!);

  print("Digite a quantidade em estoque:");
  int estoque = int.parse(stdin.readLineSync()!);

  // Variáveis para controle de vendas
  int numeroVenda = 0;
  int totalItensVendidos = 0;
  double valorTotalVendas = 0.0;

  bool continuar = true;

  // Loop para simular múltiplas vendas
  while (continuar) {
    print("\nQuantos itens deseja comprar? (Digite 0 para encerrar as vendas)");
    int quantidadeDesejada = int.parse(stdin.readLineSync()!);

    // Se o usuário digitar 0, encerra as vendas
    if (quantidadeDesejada == 0) {
      continuar = false;
      break;
    }

    // Verifica se há estoque suficiente
    if (quantidadeDesejada <= estoque) {
      // Atualiza estoque e incrementa a venda
      estoque -= quantidadeDesejada;
      numeroVenda++;
      double valorVenda = precoUnitario * quantidadeDesejada;

      // Atualiza o total de itens vendidos e valor total
      totalItensVendidos += quantidadeDesejada;
      valorTotalVendas += valorVenda;

      // Exibe a venda
      print("Venda $numeroVenda = R\$ ${valorVenda.toStringAsFixed(2)}");

    } else {
      // Se não há estoque suficiente, exibe uma mensagem
      print(
          "Estoque insuficiente! Apenas $estoque itens disponíveis no estoque.");
    }
  }

  // Exibe o resumo das vendas
  print("\nVendas encerradas.");
  print("Total de itens vendidos: $totalItensVendidos");
  print("Valor total a ser pago: R\$ ${valorTotalVendas.toStringAsFixed(2)}");
}
