

SetPhysicsDebugon() //mostra as hitbox

#include "funcoesnotas.agc" //inclui os outros arquivos nesse codigo
#insert "tela.agc" 


//imagens
createsprite(LoadImageResized("fundo provisorio kk.png",4,3.2,0)) 
menuImg = loadimage ("menu.png")
menuSP = CreateSprite(menuIMG)
setspritesize(menuIMG,1024,768)

botao1IMG=loadimage("button.png")
botao1=CreateSprite(botao1IMG)
setspritesize(botao1,400,100)
LoadImage (1,"verde.png")
LoadImage (2,"vermelho.png")
loadimage (3,"amarelo.png")
loadimage (4,"azul.png")
loadimage (5,"laranja.png")

loadimage (6,"botaoverde.png")
loadimage (7,"botaovermelho.png")
loadimage (8,"botaoamarelo.png")
loadimage (9,"botaoazul.png")



//musicas
LoadMusic (10,"courtesycringe.mp3")

TYPE Notas      //struct que engloba todas as notas, criando uma lei para todo tipo
	X 
	Y 	
	spriteid
	tamanho	
	speed 
	color
ENDTYPE

dim notasAtivas[] as notas 
//-----------------------sprites-----------------------------
	
	
//torna a imagem um sprite
botaoverde = CreateSprite ( 6 )
botaoVermelho = CreateSprite( 7 )	
botaoAmarelo = CreateSprite( 8 )
botaoAzul = CreateSprite( 9 )
//botaoLaranja = CreateSprite( 10 )
SetSpritePosition (botaoVermelho,450,670)		
SetSpritePosition (botaoVerde,310,670)		
SetSpritePosition (botaoAmarelo,580,670)		
SetSpritePosition (botaoAzul,725,670)
SetSpritePosition (botao1,320,150)

//aumenta o tamanho
setspritesize(botaoVermelho,100,100)
setspritesize(botaoVerde,100,100)
setspritesize(botaoAmarelo,100,100)
setspritesize(botaoAzul,100,100)
//setspritesize(botaoLaranja,100,100)
	

//variveis de controle
  
global  score as float = 10    //incrementa a pontuacao
global  pontuacao as float= 0	//pontuacao a ser mostrada
global 	bonus as float  = 1.0	//multiplicador do incremento de pontuacao
global  hp = 0  // vida
segundoatual as integer[5] 
valordosegundoatual#= -1
atualizouosegundo = 1 //1 para verdade, 0 para falso
bonusreal  = 1
menu = 1
tempodomenu = 0
mouse = createsprite(0)
global segundoatualI = 0
SetSpriteVisible(mouse,0)

do	
	if(menu = 1)
		gosub menuprincipal
	endif
		
	if(menu = 0)
		gosub escondemenu
		gosub criaNotas
		gosub moveNotas
		gosub escrevescore
	endif	
Print( ScreenFPS() )
Sync()
loop

return

menuprincipal:
	gosub escondesprite
	gosub mouseposicao
	
	SetSpriteVisible(menuSP,1)
	tempodomenu = Getseconds()
	
	if(GetPointerPressed()and GetSpriteCollision(botao1,mouse))
		
		menu = 0
		SetSpriteVisible(menuSP,0)	
			
			
	endif
return	



escondemenu:
		SetSpriteVisible(botao1,0)

return

mouseposicao:
		SetSpritePosition(mouse,GetPointerX(),GetPointerY())
return

escrevescore: //imprime a pontuacao	
	print( pontuacao )    
	printc("bonus ")
	printc( bonusreal )      
	print("x")
return

marcamelhorscore:
	if(pontuacao>melhorscore)
		melhorscore = score
		OpenToWrite (1,"melhorpontuacao.txt",0)
		WriteInteger(1, melhorscore)
		CloseFile(1)
	endif
	
	print(melhorscore)
return
