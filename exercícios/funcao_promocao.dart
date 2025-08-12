import 'dart:io';

// usando a função calcularDesconto
double calcularDesconto(double preco, double desconto) {
  double valorFinal = preco - (preco * desconto / 100);
  return valorFinal;
}

void main() {
  // preço original
  stdout.write('Digite o preço do produto: ');
  double preco = double.parse(stdin.readLineSync()!);

  // porcentagem de desconto
  stdout.write('Digite a porcentagem de desconto: ');
  double desconto = double.parse(stdin.readLineSync()!);

  // chamando a função
  double precoFinal = calcularDesconto(preco, desconto);

  // Saída do resultado
  print('O preço final com desconto é: R\$ ${precoFinal.toStringAsFixed(2)}');
}
