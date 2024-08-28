programa
{
	
	funcao inicio()
	{

		//Questão 1
		caracter continuar
		real     vlrMesa[4], vlrPadrao = 30.99
		inteiro  numMesa = 1
						
		para(inteiro i = 0; i < 4; i++)
		{
			escreva("Digite o valor da ",numMesa,"º mesa: ")
			leia(vlrMesa[i])

			numMesa++
		}

		escreva("\n")

		numMesa = 1

		para(inteiro i = 0; i < 4; i++)
		{
			se(vlrMesa[i] > vlrPadrao)
			{
				escreva("Mesa ",numMesa," precisa pegar: R$ ",vlrMesa[i] - vlrPadrao,"\n")
			}
			
			senao
			{
				escreva("Mesa ",numMesa,": Nada a pagar!\n")
			}
			numMesa++
		}

		escreva("\nDigite 'c' para continuar: ")
		leia(continuar)

		limpa()

		//Questão 2

		caracter quarto[10], opcao = 's', opcaoQuarto
		inteiro  numQuarto, nQuarto = 1

		para(inteiro i = 0; i < 10; i++)
		{
			quarto[i] = 'L'
		}

		enquanto(opcao == 's' ou opcao == 'S')
		{
			escreva("\nDigite o numero do quarto: ")
			leia(numQuarto)
			
			numQuarto = numQuarto - 1

			escreva("O quarto está livre ou oculpado (L/O): ")
			leia(opcaoQuarto)

			escreva("\n")

			se(quarto[numQuarto] == 'L' e opcaoQuarto == 'L' ou opcaoQuarto == 'l')
			{
				escreva("Este quarto já está vazio! ")
			}
			
			senao se(quarto[numQuarto] == 'L' e opcaoQuarto == 'O' ou opcaoQuarto == 'o')
			{
				escreva("Este quarto foi oculpado! ")
				quarto[numQuarto] = 'O' 
			}

			senao se(quarto[numQuarto] == 'O' e opcaoQuarto == 'L' ou opcaoQuarto == 'l')
			{
				escreva("Este quarto foi liberado! ")
				quarto[numQuarto] = 'L'
			}

			senao se(quarto[numQuarto] == 'O' e opcaoQuarto == 'O' ou opcaoQuarto == 'o')
			{
				escreva("Este quarto já está oculpado! ")				
			}

			escreva("\n")

			escreva("\nDeseja continuar: ")
			leia(opcao)	

				
		}

		escreva("\n")

		para(inteiro i = 0; i < 10; i++)
		{
			escreva(nQuarto," - ",quarto[i],"\n")
			nQuarto++
		}

		
		escreva("\nDigite 'c' para continuar: ")
		leia(continuar)

		limpa()

		//Questão 3

		cadeia  hospede[7], nomeHospede
		inteiro menu = 0, cont = 0, pesquisa 

		enquanto(menu != 3)
		{
			
			escreva("\n Digite 1: Cadastrar \n Digite 2: Pesquisar \n Digite 3: Sair \n")
			escreva("-----------------------------\n")
			escreva("Digite uma das opções acima: ")
			leia(menu)

			escolha(menu)
			{
				
				caso 1:
					escreva("Digite o nome do hospede: ")
					leia(hospede[cont])
					
					cont++

					se(cont > 6)
					{
						escreva("Maximo de cadastro excedido!\n")
					}
					
				pare

				caso 2:

					pesquisa = 0
					
					escreva("Digite o nome do hospede para pesquisa: ")
					leia(nomeHospede)

					enquanto(pesquisa < 7 e nomeHospede != hospede[pesquisa])
					{
						pesquisa++				
					}

					se(pesquisa > 6)
					{
						escreva("Hospede não encontrado!\n")
					}

					senao
					{
						escreva("Hospede ", nomeHospede," foi encontrado na posição ",pesquisa, "\n")
					}					
				pare				
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2022; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */