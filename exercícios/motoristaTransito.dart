import 'dart:io';

void main(){

    print("Informe seu nome");
    String? nome = stdin.readLineSync();

    print("Digite a velocidade: ");
    int velocidade = int.parse (stdin.readLineSync()!);

    if(velocidade <= 60){
        print("Sem infração");
    }else if(velocidade >= 61 && velocidade<= 80){
        print("Infração Leve");
    }else if(velocidade >= 81 && velocidade <=100){
        print("Infração Média");
    }else{
        print("Infração Grave");
    }

    print("1- Pagar à vista (10% de desconto)");
    print("2 - Parcelar em 2x (sem juros)");
    print("3 - Parcelar em 3x (com 10% de juros)")
}