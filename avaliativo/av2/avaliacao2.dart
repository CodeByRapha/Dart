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

// add primeira subclasse
class Leao extends Animal {
  Leao(String nome, String porte) : super(nome, porte);

  @override
  void emitirSom() {
    print("$nome ruge alto!");
  }

  @override
  void alimentar() {
    print("$nome está comendo carne.");
  }
}

// add segunda subclasse
class Cachorro extends Animal {
  Cachorro(String nome, String porte) : super(nome, porte);

  @override
  void emitirSom() {
    print("$nome Au Au!");
  }

  @override
  void alimentar() {
    print("$nome está comendo ração");
  }
}

// função principal main
void main() {
  List<Animal> animais = [
    Leao("Simba", "Grande"),
    Cachorro("Frank", "Médio"),
  ];

  print("===== Relatório do Zoológico ZOOMANGE =====");
  for (var a in animais) {
    a.exibirInfo();   // herdado da classe Animal
    a.emitirSom();    // polimorfismo
    a.alimentar();    // polimorfismo
    print("-----------------------------------------");
  }
}
