import 'dart:io';

void main(){
    print("Digite o valor da compra: ");
    double valor = double.parse(stdin.readLineSync()!); //input ja convertido para double
    print("Informe a quantidade de parcelas: ");
    int parcelas = int.parse(stdin.readLineSync()!);

    for(int i = 0; i < parcelas; i++){

        double valor_parcela = valor/parcelas;
        print("Parcela n° ${i+1}: $valor_parcela");

    }

}