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


local function cria_botao(  )
	-- primeira linha
	local AC = widget.newButton({label = "AC", x = x1 ,y = (y2+y3)/2 ,width = (x1 +x2+x3)/3  - 1, height = y1 - 1, shape = "rect"})

	local DEL = widget.newButton({label = "DEL", x = x3, y = (y2+y3)/2 , width = (x1 +x2+x3)/3 -1 , height =  y1 - 1, shape = "rect"})


	--segunda linha
	local b7 = widget.newButton({label = "7", x = x1/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local b8 = widget.newButton({label = "8", x = (x1+x2)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local b9 = widget.newButton({label = "9", x = (x2+x3)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local divide = widget.newButton({label = "/", x = (x3+x4)/2, y = (y3+y4)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })



	--terceira linha
	local b4 = widget.newButton({label = "4", x = x1/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local b5 = widget.newButton({label = "5", x = (x1+x2)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local b6 = widget.newButton({label = "6", x = (x2+x3)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local multi = widget.newButton({label = "x", x = (x3+x4)/2, y = (y4+y5)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })


	--quarta linha

	local b1 = widget.newButton({label = "1", x = x1/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	local b2 = widget.newButton({label = "2", x = (x1+x2)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	local b3 = widget.newButton({label = "3", x = (x2+x3)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
	
	local subtracao = widget.newButton({label = "-", x = (x3+x4)/2, y = (y5+y6)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })


	-- quinta linha

	local b0 = widget.newButton({label = "0", x = x1/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local ponto = widget.newButton({label = ".",fontSize = 20, x = (x1+x2)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local igual = widget.newButton({label = "=", x = (x2+x3)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })

	local soma = widget.newButton({label = "+", x = (x3+x4)/2, y = (y6+y7)/2,width = x1 - 1, height = y1 - 1, shape = "rect" })
end







cria_botao()
