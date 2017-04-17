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

local caixa1 =display.newText({text = "",x = display.contentWidth/2,y =(y1+y2)/3,width= display.contentWidth,align = "right",fontSize = 25})
local caixa2 = display.newText({text = "",x = display.contentWidth/2,y =(y1+y2)/2,width= display.contentWidth,align = "right",fontSize = 40})


num1 = 0
num2 = 0

local operacao = ""

--Cria todos os botoes da calculadora
function cria_botao()
	-- primeira linha
	AC = widget.newButton({label = "AC", x = x1 ,y = (y2+y3)/2 ,width = (x1 +x2+x3)/3  - 1, height = y1 - 1, shape = "rect"})
	
	mais_menos = widget.newButton({label = "+/-", x = (x2+x3)/2 ,y = (y2+y3)/2 ,width = x1 - 1, height = y1 - 1, shape = "rect"})
	
	porcentagem = widget.newButton({label = "%", x = (x3+x4)/2 ,y = (y2+y3)/2 ,width = x1 - 1, height = y1 - 1, shape = "rect"})

	--segunda linha
	b7 = widget.newButton({label = "7", x = x1/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })	 

	b8 = widget.newButton({label = "8", x = (x1+x2)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	b9 = widget.newButton({label = "9", x = (x2+x3)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	divisao = widget.newButton({label = "/", x = (x3+x4)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	--terceira linha
	b4 = widget.newButton({label = "4", x = x1/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	b5 = widget.newButton({label = "5", x = (x1+x2)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	b6 = widget.newButton({label = "6", x = (x2+x3)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	multiplicacao = widget.newButton({label = "x", x = (x3+x4)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	

	--quarta linha

	b1 = widget.newButton({label = "1", x = x1/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	b2 = widget.newButton({label = "2", x = (x1+x2)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	b3 = widget.newButton({label = "3", x = (x2+x3)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	subtracao = widget.newButton({label = "-", x = (x3+x4)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	-- quinta linha

	b0 = widget.newButton({label = "0", x = x1/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	ponto = widget.newButton({label = ".",fontSize = 20, x = (x1+x2)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	igual = widget.newButton({label = "=", x = (x2+x3)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	soma = widget.newButton({label = "+", x = (x3+x4)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
end

--operações da calculadora
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

function eventos(event)
	
	if event.phase == "began" then
	
		if event.target:getLabel() == "AC" then
			
			caixa1.text = ""
			caixa2.text = ""
		
		else if event.target:getLabel() == "+" then
			
			num1 = caixa2.text
			operacao = "+"
			caixa2.text = ""
		
		elseif event.target:getLabel() == "-" then
			num1 = caixa2.text
			operacao = "-"
			caixa2.text = ""
		
		
		else if event.target:getLabel() == "x" then
			num1 = caixa2.text
			operacao = "*"
			caixa2.text = ""
		
		
		else if event.target:getLabel() == "/" then
			num1 = caixa2.text
			operacao = "/"
			caixa2.text = ""

		
		else if event.target:getLabel() == "=" then
			
			if operacao ==  "+" then
				
				num2= caixa2.text
				caixa2.text = somar(num1,num2)
				
			else if operacao ==  "-" then
				num2= caixa2.text
				caixa2.text = subtrair(num1,num2)
				
			else if operacao == "*" then
				num2 = caixa2.text
				caixa2.text = multiplicar(num1,num2)
				
				
			else if operacao == "/" then
				num2 = caixa2.text
				caixa2.text = dividir(num1,num2)
				
			
			end
			end
			end
			end
		
		else
		
			caixa2.text = caixa2.text .. event.target:getLabel()
		
		end
		end
		end
		end
		end
		
		
	end
end

function adicionaEventosBotoes()
	
	b0:addEventListener("touch", eventos)
	b1:addEventListener("touch", eventos)
	b2:addEventListener("touch", eventos)
	b3:addEventListener("touch", eventos)
	b4:addEventListener("touch", eventos)
	b5:addEventListener("touch", eventos)
	b6:addEventListener("touch", eventos)
	b7:addEventListener("touch", eventos)
	b8:addEventListener("touch", eventos)
	b9:addEventListener("touch", eventos)


	soma:addEventListener("touch",eventos)
	subtracao:addEventListener("touch",eventos)
	multiplicacao:addEventListener("touch",eventos)
	divisao:addEventListener("touch",eventos)


	AC:addEventListener("touch",eventos)
	igual:addEventListener("touch",eventos)

end



cria_botao()
adicionaEventosBotoes()