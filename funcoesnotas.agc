

criaNotas:         //favor nao alterar
					//nao sei como isso funciona
		print(segundoatualI)
		if (valordosegundoatual < GetMilliseconds())
			atualizouosegundo = 0
			segundoatualI = segundoatualI + 1
			valordosegundoatual = GetMilliseconds() + 90
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
			if(segundoatual[0]=2)
				criaverde()
			endif
			
			if(segundoatual[1]=2)
				criavermelho()
			endif
			
			if(segundoatual[2]=2)
				criaamarelo()
			endif
			if(segundoatual[3]=2)
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
		if (GetRawKeypressed(83)and (GetRawKeyPressed(65) or GetRawKeyPressed(74) or GetRawKeyPressed(75) or GetRawKeyPressed(76))=0)
			if (GetSpriteCollision ( botaoVermelho , notasAtivas[i].spriteid ))
				gosub marcascore	
				DeleteSprite(notasAtivas[i].spriteID)			//deleta a sprite que foi tocada
			endif
		endif
	endif	
	
	if(GetSpriteExists(notasAtivas[i].spriteID))
		if (GetRawKeypressed(65)and (GetRawKeyPressed(75) or GetRawKeyPressed(74) or GetRawKeyPressed(83) or GetRawKeyPressed(76))=0) //analisa se o clique acertou ou nao uma nota verde
			press=0																														
			if (GetSpriteCollision ( botaoVerde , notasAtivas[i].spriteID )and press=0)
				gosub marcascore	
				
				DeleteSprite(notasAtivas[i].spriteID)  
				press=1		
			
			endif
		endif
	endif
		
	if(GetSpriteExists(notasAtivas[i].spriteID))	
		if (GetRawKeypressed(74)and (GetRawKeyPressed(65) or GetRawKeyPressed(75) or GetRawKeyPressed(83) or GetRawKeyPressed(76))=0)	//analisa se o clique acertou ou nao uma nota amarela
			if (GetSpriteCollision ( botaoAmarelo , notasAtivas[i].spriteid ))
				gosub marcascore		
				DeleteSprite(notasAtivas[i].spriteID)   	
					
			endif
		endif
	endif
		
	if(GetSpriteExists(notasAtivas[i].spriteID))	
		if (GetRawKeyPressed(75) and (GetRawKeyPressed(65)=0 and GetRawKeyPressed(74)=0 and GetRawKeyPressed(83)=0 and GetRawKeyPressed(76)=0)=1)	 //analisa se o clique acertou ou nao uma nota azul
			press=0	
			botaoAzul = CreateSprite( 9 )
			setspritesize(botaoAzul,100,100)
			SetSpritePosition (botaoAzul,725,670)
			if (GetSpriteCollision ( botaoazul, notasAtivas[i].spriteid )and press=0)
				gosub marcascore	
				press=1	
				DeleteSprite(notasAtivas[i].spriteID) //deleta a sprite que foi tocada
				Deletesprite(botaoazul)
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
	
	if(GetSpriteExists(notasAtivas[i].spriteID) and notasAtivas[i].Y > 768)

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
