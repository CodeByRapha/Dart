class Conta {
  String nomeTitular;
  double saldo;
  double? investimento;

  Conta(this.nomeTitular, this.saldo, {this.investimento});
}

class ContaCorrente extends Conta {
  double? limite;

  ContaCorrente(String nomeTitular, double saldo, {double? investimento, this.limite})
    : super(nomeTitular, saldo, investimento: investimento);
}

class ContaPoupanca extends Conta {
  double taxa;

  ContaPoupanca(String nomeTitular, double saldo, this.taxa, {double? investimento})
    : super(nomeTitular, saldo, investimento: investimento);

  void aplicarRendimento() {
    saldo = saldo + (saldo * taxa);
    print("Saldo atualizado: $saldo");
  }
}

void main() {
  var cc = ContaCorrente("Raphaela", 1000.0, limite: 500.0);
  print("Conta Corrente: ${cc.nomeTitular}, Saldo: ${cc.saldo}, Limite: ${cc.limite}");

  var cp = ContaPoupanca("Maria", 2000.0, 0.05);
  print("Conta Poupança: ${cp.nomeTitular}, Saldo inicial: ${cp.saldo}");
  cp.aplicarRendimento();
}