import 'dart:io';

void main(){
  print("Digite a sua idade: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); // Converte o valor do input apenas se houver dados
  if(idade >= 18){
    print("Você pode dirigir");
  }
  else{
    print("Você deve beber toddynho e pegar um uber");
  }

}