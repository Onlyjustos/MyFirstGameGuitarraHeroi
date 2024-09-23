

criaNotas:
		print(segundoatualI)
		if (valordosegundoatual < GetMilliseconds())
			atualizouosegundo = 0
			segundoatualI = segundoatualI + 1
			valordosegundoatual = GetMilliseconds() + 100
		endif 
		
		if(GetSeconds()=2+tempodomenu)
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
			
			atualizouosegundo = 1
		endif
return

function criaverde()
	nota as notas
	nota.x=330
	nota.y=-20
	nota.speed = 10

	nota.spriteid = CreateSprite(1)
	SetSpriteSize (nota.spriteid,80,80)
	SetSpriteShapeCircle(nota.spriteid,1,1,40)
	SetSpritePosition(nota.spriteid, nota.x, nota.y)
	
	notasAtivas.Insert(nota)
endfunction

function criavermelho()
	nota as notas
	nota.x=470
	nota.y=-20
	nota.speed = 10

	nota.spriteid = CreateSprite(2)
	SetSpriteSize (nota.spriteid,80,80)
	SetSpriteShapeCircle(nota.spriteid,1,1,40)
	SetSpritePosition(nota.spriteid, nota.x, nota.y)
	
	notasAtivas.Insert(nota)
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

acertouNota:     //analisa se o clique acertou ou nao uma nota vermelha
	
	if(GetSpriteExists(notasAtivas[i].spriteID))	
		if (GetRawKeypressed(83))
			if (GetSpriteCollision ( botaoVermelho , notasAtivas[i].spriteid ))
				gosub marcascore	
				DeleteSprite(notasAtivas[i].spriteID)			//deleta a sprite que foi tocada
			endif
		endif
	endif	
	
	if(GetSpriteExists(notasAtivas[i].spriteID))
		if (GetRawKeypressed(65))		//analisa se o clique acertou ou nao uma nota verde
			if (GetSpriteCollision ( botaoVerde , notasAtivas[i].spriteID ))
				gosub marcascore	
				DeleteSprite(notasAtivas[i].spriteID)   		
			
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
		if (GetRawKeypressed(75))	 //analisa se o clique acertou ou nao uma nota azul
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
return


perdeuNota: //pune a perda de nota e reseta a posição da sprite verde
	
	if(GetSpriteExists(notasAtivas[i].spriteID))
		if(notasAtivas[i].Y > 768)
			bonusreal=1
			bonus=1
			DeleteSprite(notasAtivas[i].spriteID)
			
		endif
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
