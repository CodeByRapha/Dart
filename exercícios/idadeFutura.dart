import 'dart:io';

void main() {
  print("Digite sua idade atual:"); 
  String? entrada = stdin.readLineSync();

  int idadeAtual = int.parse(entrada!); // converti a entrada para num inteiro
  int idadeFutura = idadeAtual + 1;

  print("Sua idade atual é: $idadeAtual anos");
  print("No próximo ano, você terá: $idadeFutura anos");
}