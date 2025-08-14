import 'dart:io';


void main(){

    stdout.write("Digite seu nome: ");
    String? nome = stdin.readLineSync();

    while(nome == null || nome.trim().isEmpty){ //isEmpty == é vazio   trim == ignora os espaços
        print("Existem dados vazios ou nulo, tente novamente");
        nome = stdin.readLineSync();
    }
        print("Logado com sucesso");
}
