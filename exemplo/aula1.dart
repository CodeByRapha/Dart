import 'dart:io'; //Importa a biblioteca com as funções da linguagem


void main (){ //função principal para o código, sem ela não funciona
print("Digite seu nome"); // Mensagem que aparece no input, precisa ter para o programa não ter loop infinito
String? nome = stdin.readLineSync(); // input, ? signifca que a variável pode ser nula
// String nome2 = nome!.toLowerCase();
print("Olá campeão seu nome é $nome"); //Mostra uma mensagem com o valor da variável dentro $

if  (nome == "Junin"){ // utilizar parenteses para a expressão
    print("Você é o cara");
}
else if(nome == "Marquin"){
    print("Qual foi marquin");
}
else{
    print("Saía daqui por favor, você não é o cara!");
}
}