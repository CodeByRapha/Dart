// classe base (herança - classe pai)
abstract class Animal {
  String _nome;
  String _porte; // pequeno, médio, grande

  Animal(this._nome, this._porte);

  // getters e setters para encapsulamentoo
  String get nome => _nome;
  set nome(String n) => _nome = n;

  String get porte => _porte;
  set porte(String p) => _porte = p;

  // fznd polimorfismo
  void emitirSom();
  void alimentar();

  // método comum para todas as subclasses
  void exibirInfo() {
    print("Animal: $_nome | Porte: $_porte");
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
    print("$nome faz Au Au!");
  }

  @override
  void alimentar() {
    print("$nome está comendo ração");
  }
}

// add terceira subclasse
class Gato extends Animal {
  Gato(String nome, String porte) : super(nome, porte);

  @override
  void emitirSom() {
    print("$nome faz Miauuuu!");
  }

  @override
  void alimentar() {
    print("$nome está comendo petisco.");
  }
}

// função principal main
void main() {
  List<Animal> animais = [
    Leao("Simba", "Grande"),
    Cachorro("Frank", "Médio"),
    Gato("Naninha", "Pequeno"),
  ];

  print("===== Relatório do Zoológico ZOOMANGE =====");
  for (var a in animais) {
    a.exibirInfo();   // herdado da classe Animal
    a.emitirSom();    // polimorfismo
    a.alimentar();    // polimorfismo
    print("-----------------------------------------");
  }
}
