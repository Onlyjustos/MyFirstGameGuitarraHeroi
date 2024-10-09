
criaNotas:         //favor nao alterar
					//nao sei como isso funciona
		print(segundoatualI)
		if (valordosegundoatual < GetMilliseconds())
			atualizouosegundo = 0
			segundoatualI = segundoatualI + 1
			valordosegundoatual = GetMilliseconds() + 90
		endif 
		
		if(Getseconds()=2+tempodomenu)
			PlayMusic(10)
		endif
		SetSpriteVisible (botaoVermelho,1)		
		SetSpriteVisible (botaoVerde,1)		
		SetSpritevisible (botaoAmarelo,1)		
		SetSpriteVisible (botaoAzul,1)
		
	    //SetSpritePosition (botaoLaranja,795,670)
	    
		if(atualizouosegundo = 0 )
			segundoatual=segundos[segundoatualI]
			if(segundoatual[0]=1)
				criaverde()
			endif
			
			if(segundoatual[1]=1)
				criavermelho()
			endif
			
			if(segundoatual[2]=1)
				criaamarelo()
			endif
			if(segundoatual[3]=1)
				criaazul()
			endif
			if(segundoatual[0]=2)
				criarastroverde()
			endif
			
			if(segundoatual[1]=2)
				criarastrovermelho()
			endif
			
			if(segundoatual[2]=2)
				criarastroamarelo()
				
				
			endif
			if(segundoatual[3]=2)
				criarastroAzul()
				
			endif
			if(segundoatual[4]=2)
				criarastrolaranja()
				
			endif
			
			
			atualizouosegundo = 1
			
		endif
		
return



function criaverde()
	nota as notas
	nota.x = 310
	nota.speed = 10
	nota.y = -20
	nota.spriteid = CreateSprite(1)
	SetSpriteSize (nota.spriteid,80,80)
	SetSpriteShapeCircle(nota.spriteid,1,1,40)
	SetSpritePosition(nota.spriteid, nota.x, nota.y)
	
	notasAtivas.Insert(nota)
endfunction

function criarastroverde()
	verde as rastro
	verde.x=330
	verde.y=-80
	verde.speed = 10
	verde.tamanho = 150
	verde.spriteid = CreateSprite(11)
	SetSpriteSize (verde.spriteid,40,verde.tamanho)
	
	SetSpritePosition(verde.spriteid, verde.x, verde.y)
	rastroAtivos.Insert(verde)
	
endfunction

function criavermelho()
	nota as notas
	nota.x=460
	nota.y=-20
	nota.speed = 10
	nota.spriteid = CreateSprite(2)
	SetSpriteSize (nota.spriteid,80,80)
	SetSpriteShapeCircle(nota.spriteid,1,1,40)
	SetSpritePosition(nota.spriteid, nota.x, nota.y)
	
	notasAtivas.Insert(nota)
endfunction

function criarastrovermelho()
	vermelho as rastro
	vermelho.x=480
	vermelho.y=-80
	vermelho.speed = 10
	vermelho.tamanho = 150
	vermelho.spriteid = CreateSprite(12)
	SetSpriteSize (vermelho.spriteid,40,vermelho.tamanho)
	
	SetSpritePosition(vermelho.spriteid, vermelho.x, vermelho.y)
	rastroAtivos.Insert(vermelho)
	
endfunction

function criaamarelo()
	nota as notas
	nota.x=600
	nota.y=-20
	nota.speed = 10

	nota.spriteid = CreateSprite(3)
	SetSpriteSize (nota.spriteid,80,80)
	SetSpriteShapeCircle(nota.spriteid,1,1,40)
	SetSpritePosition(nota.spriteid, nota.x, nota.y)
	
	notasAtivas.Insert(nota)
endfunction

function criarastroamarelo()
	amarelo as rastro
	amarelo.x=620
	amarelo.y=-80
	amarelo.speed = 10
	amarelo.tamanho = 150
	amarelo.spriteid = CreateSprite(14)
	SetSpriteSize (amarelo.spriteid,40,amarelo.tamanho)
	
	SetSpritePosition(amarelo.spriteid, amarelo.x, amarelo.y)
	rastroAtivos.Insert(amarelo)
	
endfunction

function criaazul()
	nota as notas
	nota.x=745
	nota.y=-20
	nota.speed = 10

	nota.spriteid = CreateSprite(4)
	SetSpriteSize (nota.spriteid,80,80)
	SetSpriteShapeCircle(nota.spriteid,1,1,40)
	SetSpritePosition(nota.spriteid, nota.x, nota.y)
	
	notasAtivas.Insert(nota)
endfunction

function criarastroAzul()
	azul as rastro
	azul.x=765
	azul.y=-100
	azul.speed = 10
	azul.tamanho = 150
	azul.spriteid = CreateSprite(13)
	SetSpriteSize (azul.spriteid,40,azul.tamanho)
	
	SetSpritePosition(azul.spriteid, azul.x, azul.y)
	rastroAtivos.Insert(azul)
	
endfunction

function criarastrolaranja()
	laranja as rastro
	laranja.x=885
	laranja.y=-100
	laranja.speed = 10
	laranja.tamanho = 150
	laranja.spriteid = CreateSprite(14)
	SetSpriteSize (laranja.spriteid,40,laranja.tamanho)
	
	SetSpritePosition(laranja.spriteid, laranja.x, laranja.y)
	rastroAtivos.Insert(laranja)
	
endfunction

acertouNota:     //analisa se o clique acertou ou nao uma nota vermelha
	
	if(GetSpriteExists(notasAtivas[i].spriteID))
		if (GetRawKeypressed(65)) //analisa se o clique acertou ou nao uma nota verde
																																
			if (GetSpriteCollision ( botaoVerde , notasAtivas[i].spriteID ))
				gosub marcascore	
				
				DeleteSprite(notasAtivas[i].spriteID)  
					
			
			endif
		endif
	endif
	
	if(GetSpriteExists(notasAtivas[i].spriteID))	
		if (GetRawKeypressed(83))
			if (GetSpriteCollision ( botaoVermelho , notasAtivas[i].spriteid ))
				gosub marcascore	
				DeleteSprite(notasAtivas[i].spriteID)			//deleta a sprite que foi tocada
			endif
		endif
	endif
	
	
	if(GetSpriteExists(notasAtivas[i].spriteID))	
		if (GetRawKeypressed(74))	//analisa se o clique acertou ou nao uma nota amarela
			if (GetSpriteCollision ( botaoAmarelo , notasAtivas[i].spriteid ))
				gosub marcascore		
				DeleteSprite(notasAtivas[i].spriteID)   	
					
			endif
		endif
	endif
		
	if(GetSpriteExists(notasAtivas[i].spriteID))		
		if (GetRawKeyPressed(75))	 //analisa se o clique acertou ou nao uma nota azul
				if (GetSpriteCollision ( botaoazul, notasAtivas[i].spriteid ))
					gosub marcascore	
					
					DeleteSprite(notasAtivas[i].spriteID) //deleta a sprite que foi tocada
					
				endif
		endif
	endif
return



moveNotas:
	for i = 0 to notasAtivas.length
		if(GetSpriteExists(notasAtivas[i].spriteID))
			SetSpritePosition (notasAtivas[i].spriteid, notasAtivas[i].X,notasAtivas[i].Y)
			notasAtivas[i].Y = notasAtivas[i].Y + notasAtivas[i].speed 
			gosub perdeuNota
			gosub acertouNota
			
			
		endif
		
		
		
	next i
	for i = 0 to rastroAtivos.length
	if(GetSpriteExists(rastroAtivos[i].spriteID))
		SetSpritePosition(rastroAtivos[i].spriteid, rastroAtivos[i].X,rastroAtivos[i].Y)
		rastroAtivos[i].Y = rastroAtivos[i].Y + rastroAtivos[i].speed 
		
		gosub moverastro
			
	endif
		
	next i
return
moverastro:
	
	if(rastroAtivos[i].y>560 and rastroAtivos[i].X=330 and rastroAtivos[i].tamanho>0)
			if ( GetRawKeyState(65))
					
				rastroAtivos[i].tamanho = rastroAtivos[i].tamanho-10
				SetSpriteSize(rastroAtivos[i].spriteid,40,rastroAtivos[i].tamanho)	
			endif		
	endif
	
	if(rastroAtivos[i].y>560 and rastroAtivos[i].X=480 and rastroAtivos[i].tamanho>0)
			if ( GetRawKeyState(83))
					
				rastroAtivos[i].tamanho = rastroAtivos[i].tamanho-10
				SetSpriteSize(rastroAtivos[i].spriteid,40,rastroAtivos[i].tamanho)	
			endif		
	endif
	if(rastroAtivos[i].y>560 and rastroAtivos[i].X=620 and rastroAtivos[i].tamanho>0)
			if ( GetRawKeyState(74))
				
				rastroAtivos[i].tamanho = rastroAtivos[i].tamanho-10
				SetSpriteSize(rastroAtivos[i].spriteid,40,rastroAtivos[i].tamanho)	
			endif		
	endif
	if(rastroAtivos[i].y>560 and rastroAtivos[i].X=765 and rastroAtivos[i].tamanho>0)
			if ( GetRawKeyState(75))
				rastroAtivos[i].tamanho = rastroAtivos[i].tamanho-10
				SetSpriteSize(rastroAtivos[i].spriteid,40,rastroAtivos[i].tamanho)	
			endif		
	endif
	if(rastroAtivos[i].y>560 and rastroAtivos[i].X=885 and rastroAtivos[i].tamanho>0)
			if ( GetRawKeyState(76))
					
				rastroAtivos[i].tamanho = rastroAtivos[i].tamanho-10
				SetSpriteSize(rastroAtivos[i].spriteid,40,rastroAtivos[i].tamanho)	
			endif		
	endif
	
perdeuNota: //pune a perda de nota e deleta ela
	
	if (GetSpriteExists(notasAtivas[i].spriteid ) and notasAtivas[i].Y > 768)

		bonusreal=1
		bonus=1
		DeleteSprite(notasAtivas[i].spriteID)
			
		
	endif	
	
return

marcascore:
	
	pontuacao = pontuacao + score * bonusreal
	
	bonus = bonus+0.1		
	
	if(bonus>0.9)
		bonusreal=1
	endif	
	if(bonus>1.9)
		bonusreal=2
	endif	
	if(bonus>2.9)
		bonusreal=3
	endif	
	if(bonus>3.9)
		bonusreal=4
	endif	
return
escondesprite:
		SetSpriteVisible (botaoVermelho,0)		
		SetSpriteVisible (botaoVerde,0)		
		SetSpritevisible (botaoAmarelo,0)		
		SetSpriteVisible (botaoAzul,0)
return
