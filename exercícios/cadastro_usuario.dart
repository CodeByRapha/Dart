import 'dart:io';

void main() {
  String? nome;

  // continua pedindo até que o nome seja válido
  do {
    print("Digite seu nome completo:");
    nome = stdin.readLineSync();

    if (nome == null || nome.trim() == '') {
      print("Nome inválido! Digite novamente");
    }
  } while (nome == null || nome.trim() == '');

  print("Cadastro realizado com sucesso! Bem-vindo, $nome ");
}
