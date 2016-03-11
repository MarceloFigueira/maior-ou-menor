def da_boas_vindas
	puts "Bem vindo ao jogo da advinhação"
	puts "qual é o seu nome?"
	nome = gets
	puts "\n\n\n\n"
	puts "Começaremos o jogo para você" + nome
end

def sorteia_numero_secreto
	puts "escolhendo um numero secreto entre 0 e 100..."
	sorteado = 75
	puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
	sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
	puts "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o número"
	chute = gets
	puts "será que acertou? você chutou" + chute
	chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
	acertou = chute == numero_secreto

	if acertou
		puts "Acertou"
		return true
	end
	
	maior = numero_secreto > chute
	if maior
		puts "o número secreto é maior"
		
	else
		puts "o numero secreto é MENOR"
		
	end
	false
end	


da_boas_vindas

numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 4


for tentativa in 1..limite_de_tentativas
	chute = pede_um_numero tentativa, limite_de_tentativas

	if verifica_se_acertou numero_secreto,chute
		break
	end
end
