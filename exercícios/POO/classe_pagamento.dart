class Pagamento {
  void processar() {
    print("Processando pagamento...");
  }
}

class Pix extends Pagamento {
  void processar() {
    print("Pagamento feito com Pix");
  }
}

class CartaoCredito extends Pagamento {
  void processar() {
    print("Pagamento feito no cartão de crédito");
  }
}

class Boleto extends Pagamento {
  void processar() {
    print("Pagamento feito com boleto");
  }
}

void main() {
  String tipo = "Pix"; // aqui simula a escolha do usuário

  Pagamento p;

  if (tipo == "Pix") {
    p = Pix();
  } else if (tipo == "Cartao") {
    p = CartaoCredito();
  } else {
    p = Boleto();
  }

  p.processar();
}
