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

// estrutura do serviço
class Servico {
  String nome;
  double preco;

  Servico(this.nome, this.preco);
}

// função para listar serviços disponíveis
void listarServicos(List<Servico> servicos) {
  print("\n=== Lista de Serviços da Papelaria ===");
  for (int i = 0; i < servicos.length; i++) {
    print("${i + 1}. ${servicos[i].nome} - R\$ ${servicos[i].preco.toStringAsFixed(2)}");
  }
  print("======================================");
}

void main() {
  // cadastro do cliente
  String nomeCliente = lerEntrada("Digite seu nome: ");
  String documentoCliente = lerEntrada("Digite seu documento: ");

  // lista de serviços (nao fiz com estoque)
  List<Servico> servicos = [
    Servico("Xerox (por página)", 0.50),
    Servico("Encadernação", 8.00),
    Servico("Impressão colorida (por página)", 1.50),
    Servico("Plastificação", 5.00),
    Servico("Serviço de digitação", 12.00),
  ];

  // carrinho
  List<Servico> carrinho = [];
  List<int> quantidades = [];

  // escolha dos serviços
  String continuar;
  do {
    listarServicos(servicos);

    int escolha = -1;
    while (escolha < 1 || escolha > servicos.length) {
      try {
        stdout.write("Escolha um serviço (1-${servicos.length}): ");
        escolha = int.parse(stdin.readLineSync()!);
      } on FormatException {
        print("Digite um número válido!");
        escolha = -1;
      }
    }

    int qtd = 0;
    while (qtd <= 0) {
      try {
        stdout.write("Digite a quantidade desejada: ");
        qtd = int.parse(stdin.readLineSync()!);
        if (qtd <= 0) {
          print("Quantidade deve ser maior que zero!");
        }
      } on FormatException {
        print("Digite um número válido!");
      }
    }

    carrinho.add(servicos[escolha - 1]);
    quantidades.add(qtd);

    stdout.write("Deseja adicionar outro serviço? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase().trim();
  } while (continuar == "s");

  // cálculo subtotal
  double subtotal = 0;
  for (int i = 0; i < carrinho.length; i++) {
    subtotal += carrinho[i].preco * quantidades[i];
  }

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
          print("Valor insuficiente. Informe um valor maior ou igual a R\$ ${total.toStringAsFixed(2)}");
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
