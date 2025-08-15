import 'dart:io';

void main() {
  double valorCompra = 0;

  // validação do valor da compra
  while (true) {
    try {
      print("Digite o valor da compra: ");
      String? entrada = stdin.readLineSync();

      if (entrada == null) {
        print("Valor inválido! Tente novamente");
        continue;
      }

      valorCompra = double.parse(entrada);

      if (valorCompra <= 0) {
        print("O valor deve ser maior que zero!");
      } else {
        break; // valor válido
      }
    } on FormatException {
      print("Digite apenas números!");
    }
  }

  // forma de pagamento
  int formaPagamento = 0;
  while (true) {
    print("\nEscolha a forma de pagamento: ");
    print("1 - Dinheiro");
    print("2 - Cartão de Débito");
    print("3 - Cartão de Crédito");
    print("4 - Pix");

    String? entrada = stdin.readLineSync();

    try {
      if (entrada == null) {
        print("Opção inválida!");
        continue;
      }

      formaPagamento = int.parse(entrada);

      if (formaPagamento < 1 || formaPagamento > 4) {
        print("Opção inválida! Digite de 1 a 4 ");
      } else {
        break; // opção válida
      }
    } on FormatException {
      print("Digite apenas números inteiros!");
    }
  }

  // resultadoo se der certo
  print("\nCompra de R\$ $valorCompra registrada com sucesso!");
  print("Forma de pagamento escolhida: $formaPagamento");
}
