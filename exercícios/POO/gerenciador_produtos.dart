class Produto {
  String nome;
  double preco;
  int estoque;

  // construtor
  Produto(this.nome, this.preco, this.estoque);

  // método para subtrair do estoque
  void subtrairEstoque() {
    if (estoque > 0) {
      estoque -= 1;
      print("1 unidade retirada. Estoque atual de $nome: $estoque");
    } else {
      print("Estoque esgotado para o produto $nome");
    }
  }
}

void main() {
  Produto p1 = Produto("Camiseta", 39.90, 2);

  p1.subtrairEstoque(); // retira 1
  p1.subtrairEstoque(); // retirando +1
  p1.subtrairEstoque(); // estoque já zero, mensagem de esgotado
}