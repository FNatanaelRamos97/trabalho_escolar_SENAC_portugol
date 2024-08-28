programa
{
	//Questão 1
	funcao inicio()
	{
		inteiro  garcons
		real     horas, valorTotal
		caracter letra

		escreva("Digite a quantidade de garçons [ex:3]: ")
		leia(garcons)
		escreva("\nDigite a quantidade de horas trabalhadas: ")
		leia(horas)

		valorTotal = garcons*(horas*10.50)

		limpa()
		
		escreva("\nCusto total dos garçons é de: ",valorTotal)
		escreva("\n")
		escreva("\nDigite C para continuar: ")
		leia(letra)

		limpa()
		
		//Questão 2
		inteiro numConvidados

		escreva("Digite a quantidade de convidados do hotel: ")
		leia(numConvidados)
		escreva("\n")

		se(numConvidados >= 30 e numConvidados <= 350)
			{
				escreva("Quantidade de café:        ",numConvidados*0.2," litros\n")
				escreva("Quantidade de agua:        ",numConvidados*0.5," litros\n")
				escreva("Quantidade de salgadinhos: ",numConvidados*7," unidades\n")
			}
			
		se(numConvidados < 30 ou numConvidados > 350)
			{
				escreva("Quantidade de convidades inferior ou superior a capacidade!\n")	
			}
			

		escreva("\n")
		escreva("Digite C para continuar: ")
		leia(letra)

		limpa()

		//Questão 3
		
		se(numConvidados <= 0 ou numConvidados > 350)
			{
				escreva("Numero de convidados inválido\n")
			}
		senao se(numConvidados > 0 e numConvidados <= 150)
			{
				escreva("Auditorio a se utilizado será o ALFA\n")	
			}
		senao se(numConvidados > 150 e numConvidados <= 220)
			{
				escreva("Auditorio a ser utilizado será o ALFA, com o adicional de ", numConvidados-150," cadeiras\n")	
			}
		senao se(numConvidados > 220 e numConvidados <= 350)
			{
				escreva("Auditorio a ser utilizado sera o Beta\n")
			}

		escreva("\n")
		escreva("Digite C para continuar: ")
		leia(letra)

		limpa()

		//Questão 4
		caracter opcao
		
		escreva("(--Digite 'l' para lanvanderia--)\n")
		escreva("(--Digite 'p' para piscina------)\n")
		escreva("\nEscolha uma das opções acima: ")
		leia(opcao)

		escolha(opcao)
			{
				caso 'l': 
				
				inteiro roupaKG
				
				escreva("Digite a quantidade roupas a ser lavada: ")
				leia(roupaKG)

					
					se(roupaKG >= 10)
						{
							escreva("O valor cobrado será de: ", roupaKG*15)
						}
					se(roupaKG < 10)
						{
							escreva("O calor caobrado será de: ", roupaKG*20)	
						}
					pare	
						
				
				caso 'p':

				inteiro  idade
				caracter opcao2
				cadeia   acompanhado
				
				escreva("Digite sua idade: ")
				leia(idade)

				escreva("\nVocê esta acompanhado?(digite sim ou não): ")
				leia(acompanhado)
					
					se(idade >= 18)
						{
							escreva("\nIdade não é necessário acompanhante!\n")
							escreva("\nSeu exame está em dia? (Digite S para sim e N para não): ")
							leia(opcao2)

							escolha(opcao2)
								{
									caso 'S':
									caso 's':
										escreva("\nAproveite a piscina!")
										pare	

									caso 'N':
									caso 'n':
										escreva("Faça seu exame!")
										pare		
								}
							
						}

					senao se(idade < 18 e acompanhado == "nao" ou acompanhado == "não")
						{
							escreva("Providencie um acompanhante maior de idade!")	 		
						}
						
					senao se(idade < 18 e acompanhado == "sim")	
						{
							escreva("\nSeu exame está em dia? (Digite S para sim e N para não): ")
							leia(opcao2)

							escolha(opcao2)
								{
									caso 'S':
									caso 's':
										escreva("\nAproveite a piscina!")
										pare	

									caso 'N':
									caso 'n':
										escreva("Faça seu exame!")
										pare		
								}
						}						
										
						
			}
			
				
				
					
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */