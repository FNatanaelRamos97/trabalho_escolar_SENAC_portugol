programa
{
	
	funcao inicio()
	{	
	//Questão 1
		inteiro  dias, valor
		caracter continuar
		
		faca
		{
			escreva("\nDigite o valor da diária: ")
			leia(valor)

			escreva("Digite a quantidade de dias: ")
			leia(dias)

			se(valor <= 0 ou dias > 30 ou dias < 0)
				{
					escreva("\nValor inválido! Digite novamente!\n")
				}
			
		}
		enquanto(valor <= 0 ou dias > 30 ou dias < 0)
		
		escreva("\nFim do programa\n")

		escreva("\nDigite 'c' para continuar:")
		leia(continuar)

		limpa()

		//Questão 2

		inteiro qtdHospede, numQuarto
		real    valorDiaria, menorValor = 1000000.0, maiorValor = 0.0
		
		escreva("Digite a quantidade de hospedes: ")
		leia(qtdHospede)

		para(inteiro i = 1; i <= qtdHospede; i++)
			{
				escreva("\nCliente numero ", i,"\n")

				escreva("Digite o numero do quarto: ")
				leia(numQuarto)

				escreva("Digite o valor da diária: ")
				leia(valorDiaria)

				se(valorDiaria > maiorValor)
					{
						maiorValor = valorDiaria 
					}
				senao se(valorDiaria < menorValor)
					{
						menorValor = valorDiaria
					}
				

				escreva("\nQuarto nº: ", numQuarto," | Valor diária: R$ ",valorDiaria,"\n")	
			}
			escreva("Total de diárias: ",qtdHospede,"\n")
			escreva("A maior diária é de: R$ ",maiorValor,"\nO menor valor é de: R$ ",menorValor)

			escreva("\nDigite 'c' para continuar: ")
			leia(continuar)

			limpa()

			//Questão 3

			caracter opcao = 's'
			real     vlrDiaria, totDiaria = 0.0, vlrMeia = 0.0, vlrNormal = 0.0
			cadeia   nomeHospede
			inteiro  gratuidade = 0, meia = 0 ,idade, cont = 0, normal = 0

			escreva("Digite o valor padrão da diária: ")
			leia(vlrDiaria)

			enquanto(opcao == 's')
				{
					escreva("\nDigite seu nome completo: ")
					leia(nomeHospede)

					escreva("\nDigite sua idade: ")
					leia(idade)

					se(idade > 0 e idade <= 4)
						{
							escreva(nomeHospede," possui gratuidade! \n")
							gratuidade++
						}
						
					senao se(idade >= 80)
						{
							escreva(nomeHospede," paga meia diária!\n ") 	
							meia++
							vlrMeia = (vlrDiaria*0.5) * meia
						}
						
					senao se(idade > 4 e idade < 80)
						{
							normal++
							vlrNormal = vlrDiaria * normal		
						}
						
						
					cont++	

					escreva("\nDeseja continuar o cadastro de hóspedes? Digite 's' para sim e 'n' para não: ")
					leia(opcao)		
				}
				
			totDiaria = vlrMeia + vlrNormal	
			escreva("Total do valor das hospedagens: R$", totDiaria," ; Gratuidade(s): ",gratuidade," ; Meia(s): ",meia)		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */