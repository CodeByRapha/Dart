import 'dart:io';


//usando for

// void main(){

//     List<String> alunos = ["Raphaela", "Ana Livia", "Betman", "Suzana"];

//     int presentes = 0;

//     percorrendo a lista com for
//     for (var i = 0; i < alunos.length; i++) {
//         stdout.write("O aluno ${alunos[i]} está presente hoje? (sim/não): ");
//         String? resposta = stdin.readLineSync();

//         if (resposta != null && resposta.toLowerCase() == "sim") {
//         presentes++;
//         }
//     }

//     // resultado final
//     print("\nTotal de alunos presentes: $presentes");

// }


// usando forEach
void main() {
  List<String> alunos = ["Raphaela", "Ana Livia", "Betman", "Suzana"];

  int presentes = 0;

  alunos.forEach((aluno) { //chamando lista alunos = (aluno) chama individual os nomes da lista
    stdout.write("O aluno $aluno está presente hoje? (sim/não): ");
    String? resposta = stdin.readLineSync();
    if (resposta != null && resposta.toLowerCase() == "sim") {
      presentes++;
    }
  });

  // resultado
  print("\nTotal de alunos presentes: $presentes");
}
