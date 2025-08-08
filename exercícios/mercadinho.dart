import 'dart:io';

void main() {
  List<String> itens = ["Arroz", "Feijão", "Carne", "Leite", "Pão"];
  List<String> meus_itens = [];
  List<double> meus_valores = [];
  String continuar = ' ';
  double total = 0.0;

  // mostrar os itens disponíveis
  print("=== BEM-VINDO AO MERCADINHO ===");
  print("Itens disponíveis:");
  print("- ${itens[0]}");
  print("- ${itens[1]}");
  print("- ${itens[2]}");
  print("- ${itens[3]}");
  print("- ${itens[4]}");

  // pedindo o CPF
  print("\nDigite seu CPF:");
  String? cpf = stdin.readLineSync();

  // adicionando itens e valores
  do {
    print("\nDigite o nome do item que deseja comprar:");
    String? nomeItem = stdin.readLineSync();

    print("Digite o valor do item:");
    double? valorItem = double.tryParse(stdin.readLineSync()!);

    if (nomeItem != null && valorItem != null) {
      meus_itens.add(nomeItem);
      meus_valores.add(valorItem);
      total += valorItem;
    } else {
      print("Erro ao registrar o item.");
    }

    print("Deseja adicionar mais itens? (SIM ou NAO)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "SIM");

  // mostrar itens comprados
  print("\n=== ITENS COMPRADOS ===");
  if (meus_itens.length > 0) {
    print("- ${meus_itens[0]}: R\$ ${meus_valores[0].toStringAsFixed(2)}");
  }
  if (meus_itens.length > 1) {
    print("- ${meus_itens[1]}: R\$ ${meus_valores[1].toStringAsFixed(2)}");
  }
  if (meus_itens.length > 2) {
    print("- ${meus_itens[2]}: R\$ ${meus_valores[2].toStringAsFixed(2)}");
  }
  if (meus_itens.length > 3) {
    print("- ${meus_itens[3]}: R\$ ${meus_valores[3].toStringAsFixed(2)}");
  }
  if (meus_itens.length > 4) {
    print("- ${meus_itens[4]}: R\$ ${meus_valores[4].toStringAsFixed(2)}");
  }

  print("Total da compra: R\$ ${total.toStringAsFixed(2)}");

  // escolher forma de pagamento
  int? opcaoPagamento;

  do {
    print("\n=== FORMAS DE PAGAMENTO ===");
    print("1 - À vista (10% de desconto)");
    print("2 - Parcelado no cartão (10% de juros)");
    print("3 - Fiado (15% a mais para pagar depois)");

    print("Digite a forma de pagamento: ");
    opcaoPagamento = int.tryParse(stdin.readLineSync()!);

    switch (opcaoPagamento) {
      case 1:
        double valorFinal = total * 0.9;
        print("Total com 10% de desconto: R\$ ${valorFinal.toStringAsFixed(2)}");
        break;
      case 2:
        double valorFinal = total * 1.1;
        print("Total com 10% de juros: R\$ ${valorFinal.toStringAsFixed(2)}");
        break;
      case 3:
        double valorFinal = total * 1.15;
        print("Total fiado (15% a mais): R\$ ${valorFinal.toStringAsFixed(2)}");
        break;
      default:
        print("Opção inválida. Tente novamente.");
        opcaoPagamento = null;
    }
  } while (opcaoPagamento == null);

  print("\nObrigado pela compra, CPF: $cpf");
}
