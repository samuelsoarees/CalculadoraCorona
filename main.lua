local widget = require("widget")

x1 = display.contentWidth * 0.25

x2 = display.contentWidth * 0.50

x3 = display.contentWidth * 0.75

x4 = display.contentWidth



valTelaY = display.contentHeight /7

y1 = valTelaY

y2 = valTelaY *2

y3 = valTelaY *3

y4 = valTelaY *4

y5 = valTelaY *5

y6 = valTelaY *6

y7 = valTelaY *7


local contadores = {operacao = 0,final = 0}


local texto1 =display.newText({text = "",x = display.contentWidth/2,y =(y1+y2)/3,width= display.contentWidth,align = "right",fontSize = 25})
local texto = display.newText({text = "",x = display.contentWidth/2,y =(y1+y2)/2,width= display.contentWidth,align = "right",fontSize = 40})

labelTexto1 = ""

operador = ""

local numero = ""

local n1 = 0
local n2 = 0


function mostraTela (numero)

texto.text = texto.text .. numero

end

function cria_botao()
	-- primeira linha
	AC = widget.newButton({label = "AC", x = x1 ,y = (y2+y3)/2 ,width = (x1 +x2+x3)/3  - 1, height = y1 - 1, shape = "rect"})

	DEL = widget.newButton({label = "DEL", x = x3, y = (y2+y3)/2 , width = (x1 +x2+x3)/3 -1 , height =  y1 - 1, shape = "rect"})


	--segunda linha
	b7 = widget.newButton({label = "7", x = x1/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b7.valor = 7 

	b8 = widget.newButton({label = "8", x = (x1+x2)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b8.valor = 8
	
	b9 = widget.newButton({label = "9", x = (x2+x3)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b9.valor = 9
	
	divisao = widget.newButton({label = "/", x = (x3+x4)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	divisao.valor = "/"


	--terceira linha
	b4 = widget.newButton({label = "4", x = x1/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b4.valor = 4
	
	b5 = widget.newButton({label = "5", x = (x1+x2)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b5.valor = 5
	
	b6 = widget.newButton({label = "6", x = (x2+x3)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b6.valor = 6
	
	multiplicacao = widget.newButton({label = "x", x = (x3+x4)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	multiplicacao.valor = "*"

	--quarta linha

	b1 = widget.newButton({label = "1", x = x1/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b1.valor = 1
	
	b2 = widget.newButton({label = "2", x = (x1+x2)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b2.valor = 2
	
	b3 = widget.newButton({label = "3", x = (x2+x3)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b3.valor = 3 
	
	subtracao = widget.newButton({label = "-", x = (x3+x4)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	subtracao.valor = "-"

	-- quinta linha

	b0 = widget.newButton({label = "0", x = x1/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	b0.valor = 0

	ponto = widget.newButton({label = ".",fontSize = 20, x = (x1+x2)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	igual = widget.newButton({label = "=", x = (x2+x3)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	soma = widget.newButton({label = "+", x = (x3+x4)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	soma.valor = "+"
end


function escolhaOperacao(n1,n2)
	
	if operador ==  "+" then
		result = somar(n1,n2)
		
		texto.text = result
		n1 = 0
		n2 = 0
		numero = ""
	end 
	
	if operador == "-" then
		result = subtrair(n1,n2)
		
		texto.text = result
		n1 = 0
		n2 = 0
		numero = ""
	end

	if operador == "*" then
		result = multiplicar(n1,n2)
		
		texto.text = result
		n1 = 0
		n2 = 0
		numero = ""
	end
	
	if operador == "/" then
		result = dividir(n1,n2)
		
		texto.text = result
		n1 = 0
		n2 = 0
		numero = ""
	end
	
end


function somar(n1,n2)
	local soma = n1+n2
	return soma


end

function subtrair(n1,n2)
 local sub = n1-n2
 
 return sub


end

function multiplicar(n1,n2)
	local multi = n1*n2
	
	return multi

end

function dividir(n1,n2)
	local divide = n1/n2
	
	return divide
end

-- funcoes dos botoes com numeros
function eventos_botoes_Num(event)
	
	if event.phase ==  "began" then
		mostraTela(event.target.valor)
		numero= numero .. event.target.valor
		labelTexto1 = labelTexto1 .. event.target.valor
		contadores.operacao = 1
		
	end

end

-- funcoes dos operadores 
function eventos_botoes_sinais(event)

	if event.phase == "began" then
		
		if contadores.operacao > 0 then
		
			operador = event.target.valor
			texto.text = texto.text .. operador	
			labelTexto1 = labelTexto1 .. operador
			n1 = numero
			numero = ""
			contadores.operacao = 0
		end
	end

end

function evento_Botao_AC(event)
	
	if event.phase == "began" then
		
		texto.text = ""
		texto1.text =""
	end


end

function evento_Botao_Igual(event)
	
	if event.phase == "began" then
		
		n2 = numero
		texto1.text = labelTexto1
		escolhaOperacao(n1,n2)
		labelTexto1 = ""
	end


end

function adicionaEventos_botoes()
	
	b0:addEventListener("touch", eventos_botoes_Num)
	b1:addEventListener("touch", eventos_botoes_Num)
	b2:addEventListener("touch", eventos_botoes_Num)
	b3:addEventListener("touch", eventos_botoes_Num)
	b4:addEventListener("touch", eventos_botoes_Num)
	b5:addEventListener("touch", eventos_botoes_Num)
	b6:addEventListener("touch", eventos_botoes_Num)
	b7:addEventListener("touch", eventos_botoes_Num)
	b8:addEventListener("touch", eventos_botoes_Num)
	b9:addEventListener("touch", eventos_botoes_Num)


	soma:addEventListener("touch",eventos_botoes_sinais)
	subtracao:addEventListener("touch",eventos_botoes_sinais)
	multiplicacao:addEventListener("touch",eventos_botoes_sinais)
	divisao:addEventListener("touch",eventos_botoes_sinais)


	AC:addEventListener("touch",evento_Botao_AC)
	igual:addEventListener("touch",evento_Botao_Igual)

end



cria_botao()
adicionaEventos_botoes()