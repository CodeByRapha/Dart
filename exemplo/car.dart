import 'dart:io';

class Carro{ //Classe
  int rodas = 0; //Caracteristica ou atributo
  String cor = "";
  String placa = "";
  String marca = "";
  String modelo = "";
  int velocidade = 0;
  //Construtor
  Carro(this.rodas, this.cor, this.placa, this.marca, this.modelo, this.velocidade);

  void acelerar(){ //Método
    velocidade += 10;
  }

}

void main(){
  Carro Mustang = Carro(4,"Azul","AJA1800","Ford","Mustang Manual",170);
  Carro Ferrari = Carro(4,"Vermelho","AC777","Ferrari","458 La Ferrari F80 F296 PuroSangue",200);
  print("Velocidade antes de acelerar ${Mustang.velocidade}");
  print("Velocidade antes de acelerar ${Ferrari.velocidade}");
  
  Mustang.acelerar();
  Ferrari.acelerar();

  print("Velocidade depois de acelerar ${Mustang.velocidade}");
  print("Velocidade depois de acelerar ${Ferrari.velocidade}");
}