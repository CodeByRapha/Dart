class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void fazerSom() {
    print("Som qualquer");
  }
}

class Cachorro extends Animal {
  String? raca;

  Cachorro(String nome, int idade, {this.raca}) : super(nome, idade);

  void fazerSom() {
    print("Au au!");
  }
}

class Gato extends Animal {
  String? cor;

  Gato(String nome, int idade, {this.cor}) : super(nome, idade);

  void fazerSom() {
    print("Miau!");
  }
}

void main() {
  var c = Cachorro("Pitch", 12, raca: "Pitbull");
  var g = Gato("Naninha", 7, cor: "Branco");

  c.fazerSom();
  print("Cachorro: ${c.nome}, ${c.idade} anos, Raça: ${c.raca}");

  g.fazerSom();
  print("Gato: ${g.nome}, ${g.idade} anos, Cor: ${g.cor}");
}
