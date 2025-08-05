import 'dart:io';

void main(){

    print("Informe seu nome");
    String? nome = stdin.readLineSync();

    print("Digite a velocidade: ");
    int velocidade = int.parse (stdin.readLineSync()!);

    double multa = 0.0;

    if(velocidade <= 60){
        print("Sem infração");
    }else if(velocidade >= 61 && velocidade<= 80){
        print("Infração Leve");
        multa = 100.0;
    }else if(velocidade >= 81 && velocidade <=100){
        print("Infração Média");
        multa = 200.0;
    }else{
        print("Infração Grave");
        multa = 300.0;
    }

     if (multa == 0) return; //se n tiver multa n precisa pedir forma de pagamento

    print("1- Pagar à vista (10% de desconto)"); 
    print("2 - Parcelar em 2x (sem juros)");
    print("3 - Parcelar em 3x (com 10% de juros)");

    print("Digite a sua opção: ");
    int opcao = int.parse(stdin.readLineSync()!);


    switch(opcao){
        case 1:
            double valorFinal = multa * 0.9;
            print("Valor com 10% de desconto: R\$ ${valorFinal.toStringAsFixed(2)}");
            break;
        case 2:
            double parcela = multa / 2;
            print("2x de R\$ ${parcela.toStringAsFixed(2)} (sem juros)");
            break;
        case 3:
            double valorFinal = multa * 1.1;
            double parcela = valorFinal / 3;
            print("3x de R\$ ${parcela.toStringAsFixed(2)} (com 10% de juros)");
            print("Valor total: R\$ ${valorFinal.toStringAsFixed(2)}");
            break;
        default:
            print("Opção inválida!");
            break;    
    }
}