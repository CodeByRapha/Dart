import 'dart:io';

void main() {
  // lendo as 5 notas do usuário
  print('Digite a nota 1:');
  String? n1 = stdin.readLineSync();

  print('Digite a nota 2:');
  String? n2 = stdin.readLineSync();

  print('Digite a nota 3:');
  String? n3 = stdin.readLineSync();

  print('Digite a nota 4:');
  String? n4 = stdin.readLineSync();

  print('Digite a nota 5:');
  String? n5 = stdin.readLineSync();

  // convertendo nota para double
  double nota1 = double.parse(n1!);
  double nota2 = double.parse(n2!);
  double nota3 = double.parse(n3!);
  double nota4 = double.parse(n4!);
  double nota5 = double.parse(n5!);

  //  média
  double media = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;

  if (media >= 5){
    print("Aprovado");
  }
  else if(media <= 4){
    print("Reprovado");
  }
  else{
    print("Recuperação");
  }
}
