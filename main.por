programa {
  inclua biblioteca Util

  funcao inicio() {
    cadeia parOuImpar, escolhaJogador
    inteiro numeroMaoJogador, numeroMaoAlgoritmo, total

    escreva("ESCOLHA:\nPar (p) ou Ímpar (imp)?\n=> ")
    leia(parOuImpar)

    se (parOuImpar == "p" ou parOuImpar == "P") {
      escreva("Você escolheu par!\n")
      escolhaJogador = "par"

    } senao se (parOuImpar == "imp" ou parOuImpar == "IMP") {
      escreva("Você escolheu ímpar!\n")
      escolhaJogador = "impar"

    } senao {
      escreva("Inválido! Digite 'p' ou 'imp'.")
      retorne
    }

    escreva("Escolha um número de 0 até 5:\n=> ")
    leia(numeroMaoJogador)

    se (numeroMaoJogador > 5 ou numeroMaoJogador < 0) {
      escreva("Digite um número válido!")
      retorne
    }

    numeroMaoAlgoritmo = Util.sorteia(0, 5)
    total = numeroMaoAlgoritmo + numeroMaoJogador
    
    se ((total % 2 == 0) e (escolhaJogador == "par")) {
      escreva("Você ganhou! Seu oponente escolheu ", numeroMaoAlgoritmo, ", totalizando ", total, "!")
    } senao se ((total % 2 == 1) e (escolhaJogador == "impar")) {
      escreva("Você ganhou! Seu oponente escolheu ", numeroMaoAlgoritmo, ", totalizando ", total, "!")
    } senao {
      escreva("Você perdeu! Seu oponente escolheu ", numeroMaoAlgoritmo, ", totalizando ", total, "!")
    }
  }
}
