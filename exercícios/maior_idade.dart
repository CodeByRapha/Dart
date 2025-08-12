import 'dart:io';

// verificando se é maior de idade
bool ehMaiorIdade(int idade) {
  return idade >= 18;
}

void main() {
  // entrada da idade
  stdout.write("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  // verificacao e saída
  if (ehMaiorIdade(idade)) {
    print("Você é maior de idade!");
  }else{
    print("Você é menor de idade!");
  }

}
