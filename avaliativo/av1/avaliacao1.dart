import 'dart:io';

// função para ler entrada com validação
String lerEntrada(String mensagem) {
  String? entrada;
  do {
    stdout.write(mensagem);
    entrada = stdin.readLineSync()?.trim();
    if (entrada == null || entrada.isEmpty) {
      print("Entrada inválida. Tente novamente.");
    }
  } while (entrada == null || entrada.isEmpty);
  return entrada;
}

// estrutura do produto com estoque
class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);
}

// função para listar produtos disponíveis
void listarProdutos(List<Produto> produtos) {
  print("\n=== Lista de Produtos da Papelaria ===");
  for (int i = 0; i < produtos.length; i++) {
    print("${i + 1}. ${produtos[i].nome} - R\$ ${produtos[i].preco.toStringAsFixed(2)} "
          "(Estoque: ${produtos[i].estoque})");
  }
  print("======================================");
}

void main() {
  // cadastro do cliente
  String nomeCliente = lerEntrada("Digite seu nome: ");
  String documentoCliente = lerEntrada("Digite seu documento: ");

  // lista de produtos com estoque
  List<Produto> produtos = [
    Produto("Caderno", 15.00, 100),
    Produto("Caneta", 2.50, 200),
    Produto("Lápis", 1.50, 150),
    Produto("Borracha", 1.00, 80),
    Produto("Pacote de Papel A4", 25.00, 50),
  ];

  // carrinho
  List<Produto> carrinho = [];
  List<int> quantidades = [];

  // escolha dos produtos
  String continuar;
  do {
    listarProdutos(produtos);

    int escolha = -1;
    while (escolha < 1 || escolha > produtos.length) {
      stdout.write("Escolha um produto (1-${produtos.length}): ");
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.trim().isEmpty) {
        print("Opção inválida. Não pode ser vazio.");
        continue;
      }

      try {
        escolha = int.parse(entrada);
        if (escolha < 1 || escolha > produtos.length) {
          print("Opção inválida. Escolha entre 1 e ${produtos.length}.");
        }
      } on FormatException {
        print("Digite um número válido!");
        escolha = -1;
      }
    }

    int qtd = 0;
    while (qtd <= 0 || qtd > produtos[escolha - 1].estoque) {
      try {
        stdout.write("Digite a quantidade desejada: ");
        qtd = int.parse(stdin.readLineSync()!);
        if (qtd <= 0) {
          print("Quantidade deve ser maior que zero!");
        } else if (qtd > produtos[escolha - 1].estoque) {
          print("Quantidade indisponível em estoque! Estoque atual: ${produtos[escolha - 1].estoque}");
        }
      } on FormatException {
        print("Digite um número válido!");
      }
    }

    carrinho.add(produtos[escolha - 1]);
    quantidades.add(qtd);

    // reduzir estoque
    produtos[escolha - 1].estoque -= qtd;

    stdout.write("Deseja adicionar outro produto? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase().trim();
  } while (continuar == "s");

  // cálculo subtotal
  double subtotal = 0;
  for (int i = 0; i < carrinho.length; i++) {
    subtotal += carrinho[i].preco * quantidades[i];
  }

  // mostrar total após finalizar compras
  print("\n>>> Valor total da compra até agora: R\$ ${subtotal.toStringAsFixed(2)}");

  // formas de pagamento
  print("\nFormas de pagamento:");
  print("1 - Dinheiro (10% de desconto)");
  print("2 - Débito (sem desconto)");
  print("3 - Crédito (5% de juros)");
  print("4 - PIX (5% de desconto)");

  int forma = 0;
  while (forma < 1 || forma > 4) {
    try {
      stdout.write("Escolha a forma de pagamento: ");
      forma = int.parse(stdin.readLineSync()!);
    } on FormatException {
      print("Digite um número válido!");
    }
  }

  double descontoOuJuros = 0;
  double total = subtotal;

  switch (forma) {
    case 1:
      descontoOuJuros = subtotal * 0.10;
      total -= descontoOuJuros;
      break;
    case 2:
      descontoOuJuros = 0;
      break;
    case 3:
      descontoOuJuros = subtotal * 0.05;
      total += descontoOuJuros;
      break;
    case 4:
      descontoOuJuros = subtotal * 0.05;
      total -= descontoOuJuros;
      break;
  }

  double troco = 0;
  if (forma == 1) {
    double valorPago = 0;
    while (valorPago < total) {
      try {
        stdout.write("Informe o valor em dinheiro recebido: ");
        valorPago = double.parse(stdin.readLineSync()!);
        if (valorPago < total) {
          print("Valor insuficiente!! Informe um valor maior ou igual a R\$ ${total.toStringAsFixed(2)}");
        }
      } on FormatException {
        print("Digite um número válido!");
      }
    }
    troco = valorPago - total;
  }

  // recibo final
  print("\n========= RECIBO =========");
  print("Cliente: $nomeCliente");
  print("Documento: $documentoCliente");
  print("\nItens comprados:");
  for (int i = 0; i < carrinho.length; i++) {
    double valor = carrinho[i].preco * quantidades[i];
    print("${carrinho[i].nome} x${quantidades[i]} - R\$ ${valor.toStringAsFixed(2)}");
  }
  print("\nSubtotal: R\$ ${subtotal.toStringAsFixed(2)}");
  if (forma == 3) {
    print("Juros: R\$ ${descontoOuJuros.toStringAsFixed(2)}");
  } else if (forma == 1 || forma == 4) {
    print("Desconto: R\$ ${descontoOuJuros.toStringAsFixed(2)}");
  }
  print("Total a pagar: R\$ ${total.toStringAsFixed(2)}");
  switch (forma) {
    case 1:
      print("Forma de pagamento: Dinheiro");
      print("Troco: R\$ ${troco.toStringAsFixed(2)}");
      break;
    case 2:
      print("Forma de pagamento: Débito");
      break;
    case 3:
      print("Forma de pagamento: Crédito");
      break;
    case 4:
      print("Forma de pagamento: PIX");
      break;
  }
  print("==========================");
  print("Obrigado pela preferência!");
}
