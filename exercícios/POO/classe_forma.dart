import 'dart:math';

class Forma {
  double calcularArea() {
    return 0;
  }

  String nome() {
    return "Forma";
  }
}

class Quadrado extends Forma {
  double lado;

  Quadrado(this.lado);

  double calcularArea() {
    return lado * lado;
  }

  String nome() {
    return "Quadrado";
  }
}

class Retangulo extends Forma {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  double calcularArea() {
    return base * altura;
  }

  String nome() {
    return "Retângulo";
  }
}

class Circulo extends Forma {
  double raio;

  Circulo(this.raio);

  double calcularArea() {
    return pi * raio * raio;
  }

  String nome() {
    return "Círculo";
  }
}

void main() {
  var formas = [Quadrado(4), Retangulo(5, 3), Circulo(2)];

  formas.forEach((f) {
    print("${f.nome()} - Área: ${f.calcularArea()}");
  });
}
