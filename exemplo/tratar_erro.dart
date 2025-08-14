import 'dart:io';

//EXEMPLO 1

// void main(){

// try { //tenta fazer algo
//     print("Digite seu número juninbanguela: ");
//     int numero = int.parse(stdin.readLineSync()!);

// }catch (juninbanguela){ // e == erro
//     print("Esse é o seu erro $juninbanguela");

// }finally{ // independente do que aconteça executa:
//     print("Encerrando programa");
// }


// }

//EXEMPLO 2

// void main(){

// try { //tenta fazer algo
//     print("Digite seu número juninbanguela: ");
//     int numero = int.parse(stdin.readLineSync()!);

// }on FormatException{ //Você consegue mostrar respostas personalizadas para cada tipo de erro.
//     print("Digite apenas números");
// }

// }

//EXEMPLO 3

void main(){

try { //tenta fazer algo
    print("Digite seu número juninbanguela: ");
    int numero = int.parse(stdin.readLineSync()!);

    if(numero == int) {
        print("Numero com sucesso");
    }

}on FormatException{ //Você consegue mostrar respostas personalizadas para cada tipo de erro.
    print("Digite apenas números");
}on TypeError{
    print("Conversão de dados inválida");
}

}