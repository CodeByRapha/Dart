import 'dart:io';

// classe base (herança - classe pai)
abstract class Animal {
  String nome;
  String porte; // pequeno, médio, grande

  Animal(this.nome, this.porte);

  // fznd polimorfismo
  void emitirSom();
  void alimentar();

  // método comum para todas as subclasses
  void exibirInfo() {
    print("Animal: $nome | Porte: $porte");
  }
}