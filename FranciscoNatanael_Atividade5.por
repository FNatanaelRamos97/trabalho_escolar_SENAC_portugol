programa
{
	cadeia  nomeHospede[10]
	inteiro diasHospedado[10], cpf[10], indiceHospede = 0
	real    despesaHotel[10]
		
	funcao inicio()
	{
		menu()
	}

	funcao menu()
	{
		inteiro  opcao
		
		faca{
			escreva("\n\n")
			escreva("--Bem vindo ao menu do hotel Alto Parnaíba!--\n\n")
			escreva("1 - Cadastrar hóspedes\n")
			escreva("2 - Exibir hóspedes cadastrados\n")
			escreva("3 - Reservar área de lazer\n")
			escreva("4 - Calcular total a pagar\n")
			escreva("0 - Sair\n")
			escreva("\nDigite uma das opções abaixo para prosseguir: ")leia(opcao)
			limpa()
			
			escolha(opcao){
				caso 0:
					escreva("Nos veremos novamente. Até daqui a pouco!\n")
				pare	
				
				caso 1:
					cadastroHospede()
				pare

				caso 2:
					exibirHospede()
				pare

				caso 3:
					areasHotel()
				pare

				caso 4:
					se(indiceHospede!=0){
					inteiro op, total
					faca{
						escreva("\n--------------------------------------------\n")
						exibirHospede()
						escreva("\n--------------------------------------------\n")	
						escreva("\nDigite o indice do hóspede:")leia(op)	
						se(op<0 ou op>indiceHospede){
							escreva("\nOpcão inválida!\nCadastro inexistente!\nCliente não possui despesas!")	
						}
						senao{
							total=totalAPagar(despesaHotel[op-1],diasHospedado[op-1])
							escreva("\nO hóspede ",nomeHospede[op-1]," tem um gasto total de R$ ",total)
						}
					}enquanto(op<0 ou op>indiceHospede)
					}
					senao{
						escreva("\nHotel ainda não possui cadastros!\n")
					}
				pare

				caso contrario:
					escreva("Opção inválida! Digite um dos numeros acima informado!\n\n")
				pare	 
			}
			
		}enquanto(opcao != 0)
	}

	funcao cadastroHospede(){
		cadeia   nome
		inteiro  dias, cPF
		caracter opcao = 's', confirmacao = 's'
		
		faca{
			
		se(indiceHospede >= 0 e indiceHospede < 10){
			
			faca{
			escreva("\n")
			escreva("Vamos começar o cadastro!")
			escreva("\nDigite o nome do hóspede: ") leia(nome)
			escreva("Digite o CPF: ")leia(cPF)
			escreva("Digite a quantidade de dias que o hóspede deseja ficar: ")leia(dias)
			limpa()

			escreva("Indice: ",indiceHospede+1, "\n")
			escreva("Nome do hóspede: ", nome," | CPF cadatrado: ", cPF)
			escreva("\nQuatidade de dias hospedade: ",dias)
			escreva("\n\nVocê confirma os dados? ('s' para sim e 'n' para não): ")leia(confirmacao)

			escolha(confirmacao){
				caso 's':
				caso 'S':
					nomeHospede[indiceHospede] = nome
					cpf[indiceHospede] = cPF
					diasHospedado[indiceHospede] = dias
					indiceHospede++
					escreva("Cadastro confirmado com sucesso!\n")
				pare

				caso 'n':
				caso 'N':
					escreva("Tudo bem. Vamos reiniciar o cadastro!\n")
				pare

				caso contrario:
					escreva("Opcao inválida! Vamos reiniciar o cadastro!\n")	
				pare	
			}
			
			}enquanto(confirmacao != 's')

			
		escreva("\nVocê deseja cadastrar mais algum cliente? ('s' para sim e 'n' para não): ")leia(opcao)
		limpa()
		
		}	
		senao{
			escreva("\nCadastros lotados. NAO HÁ VAGAS NO HOTEL! \n")
			opcao = 'n'
		}
		
		}enquanto(opcao != 'n')
		
	}

	funcao exibirHospede() {
		inteiro  lista = 0
		caracter continuar

		se(lista != indiceHospede){
		escreva("Bem vindo a lista de hospedes !\nEstes são nossos hospedes cadastrados até o momento:\n\n")

		enquanto(lista != indiceHospede){
			escreva("Indice: ",lista+1,"\n")
			escreva("Nome do hospede: ",nomeHospede[lista]," | CPF: ",cpf[lista],"\n")
			escreva("Quantidade de dias hospedado: ",diasHospedado[lista])
			escreva("\n\n")
			lista++
		}
		}
		senao{
			escreva("Sem hospedes cadastrados até o momento!\n\n")
		}
		
	}

	funcao areasHotel(){
		inteiro  lista = 0
		caracter opcao = 's'	
		
		escreva("\nBem vindo a opção de reservar a área de lazer do hotel!\n")
		escreva("-------------------------------------------------------------\n")

		se(indiceHospede != 0){
			exibirHospede()
			escreva("\n")
			escreva("-------------------------------------------------------------")
			escreva("\n")

			escreva("Qual o indice do hospede? ")leia(lista)
			escreva("\n")
			escreva("Selecione uma das opções abaixo para reserva.\n\n")
			escreva("A - Academia: R$20,00\nS - Salão de festas: R$ 50,00\nR - Restaurante: R$35,00\n")
			escreva("\nSelecione uma das opções acima: ")leia(opcao)

			escolha(opcao){
				caso 'A': caso 'a':
					despesaHotel[lista-1] = despesaHotel[lista-1] + 20
					escreva("\nValor adicionado a conta com sucesso!\n")
				pare

				caso 'S': caso 's':
					despesaHotel[lista-1] = despesaHotel[lista-1] + 50
					escreva("\nValor adicionado a conta com sucesso!\n")	
				pare

				caso 'R': caso 'r':
					despesaHotel[lista-1] = despesaHotel[lista-1] + 35
					escreva("\nValor adicionado a conta com sucesso!\n")
				pare

				caso contrario:
					escreva("\nOpção inválida!\n")
				pare	
			}
		
			}
			senao{
				escreva("\nSem hospedes cadastrados até o momento!\n\n")
			}	
	}
	funcao real totalAPagar(real desHo, inteiro diaHo){
		real diariaHotel = 100.0
		real total=0.0

		total=desHo+(diariaHotel*diaHo)
		retorne total
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @DOBRAMENTO-CODIGO = [6, 11, 73, 131, 152, 197];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomeHospede, 3, 9, 11}-{cpf, 4, 28, 3}-{despesaHotel, 5, 9, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */