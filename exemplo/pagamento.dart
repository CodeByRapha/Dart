import 'dart:io';

void main() {
  int opcao;

  do{
    print("\n=== Formas de Pagamento ===");
    print("1 - Dinheiro");
    print("2 - Cartão de Débito");
    print("3 - Cartão de Crédito");
    print("4 - Pix");
    stdout.write("Digite a sua opção: ");
    
    String? entrada = stdin.readLineSync();
    opcao = int.tryParse(entrada ?? '') ?? 0;

  }while (opcao < 1 || opcao > 4);

  print("\nOpção escolhida:");
  switch (opcao) {
    case 1:
      print('Dinheiro');
      break;
    case 2:
      print("Cartão de Débito");
      break;
    case 3:
      print("Cartão de Crédito");
      break;
    case 4:
      print("Pix");
      break;
    default:
      print("Opção Inválida");
  }
}
