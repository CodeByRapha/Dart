class Animal {
  void falar() {
    print("Som qualquer");
  }
}

class Cachorro extends Animal {
  void falar() {
    print("Au au!");
  }
}

class Gato extends Animal {
  void falar() {
    print("Miau!");
  }
}

class Papagaio extends Animal {
  void falar() {
    print("Loro quer petiscoo");
  }
}

void main() {
  var animais = [Cachorro(), Gato(), Papagaio()];

  animais.forEach((a) {
    a.falar();
  });
}
