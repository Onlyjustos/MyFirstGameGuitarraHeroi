	
// Project: primeiro jogo 2 
// Created: 2024-07-24
OpenToRead(1,"melhorpontuacao.txt")
melhorpontuacao = ReadInteger(1)
CloseFile(1)

// mostrar erros
SetErrorMode(2)

// config da tela
SetWindowTitle( "primeiro Jogo 2" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// config do  display
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) 

	
		dim segundos[740,5]
		
		for i = 0 to segundos.length
			segundos[i] = [0,0,0,0,0]
		next
		
				     
				    //Vd V AM AZ la
				    
		segundos[3] =  [0, 0, 0, 0,0]
		segundos[4] =  [0, 0, 0, 0,0]
		segundos[5] =  [0, 0, 0, 0,0]
		segundos[6] =  [0, 0, 0, 0, 0]
		segundos[7] =  [0, 0, 0, 0, 0]
		segundos[8] =  [0, 0, 0, 0, 0]
		segundos[9] =  [0, 0, 0, 0, 0]
		segundos[10] = [0, 0, 0, 0, 0]
		segundos[11] = [0, 0, 0, 0, 0]
		segundos[12] = [0, 0, 0, 0, 0]
		segundos[13] = [0, 0, 0, 0, 0]
		segundos[14] = [0, 0, 0, 0, 0]
		segundos[15] = [0, 0, 0, 0, 0]
		segundos[16] = [0, 0, 0, 0, 0]
		segundos[17] = [0, 0, 0, 0, 0]
		segundos[18] = [0, 0, 0, 0, 0]
		segundos[19] = [0, 0, 0, 0, 0]
		segundos[20] = [0, 0, 0, 1, 0]
		segundos[21] = [0, 0, 0, 0, 0]
		segundos[22] = [0, 0, 0, 0, 0]
		segundos[23] = [0, 0, 1, 0, 0]
		segundos[24] = [0, 0, 0, 0, 0]
		segundos[25] = [0, 0, 0, 0, 0]
		segundos[26] = [0, 1, 0, 0, 0]
		segundos[27] = [0, 0, 0, 0, 0]
		segundos[28] = [0, 0, 0, 0, 0]
		segundos[29] = [1, 0, 0, 0, 0]
		segundos[30] = [0, 0, 0, 0, 0]
		segundos[31] = [0, 0, 0, 0, 0]
		segundos[32] = [0, 0, 0, 0, 0]
		segundos[33] = [0, 0, 0, 0, 0]
		segundos[34] = [0, 0, 0, 0, 0]
		segundos[35] = [0, 0, 0, 0, 0]
		segundos[36] = [0, 0, 0, 0, 0]
		segundos[37] = [0, 0, 0, 0, 0]
		segundos[38] = [0, 0, 0, 0, 0]
		segundos[39] = [0, 0, 0, 0, 0]
		segundos[40] = [0, 0, 0, 0, 0]
		segundos[50] = [0, 0, 0, 0, 0]
		segundos[51] = [0, 0, 0, 0, 0]
		segundos[52] = [0, 0, 0, 0, 0]
		segundos[53] = [0, 0, 0, 0, 0]
		segundos[54] = [0, 0, 0, 0, 0]
		segundos[55] = [0, 0, 0, 0, 0]
		segundos[56] = [0, 0, 0, 0, 0]
		segundos[57] = [0, 0, 0, 0, 0]
		segundos[58] = [0, 0, 0, 0, 0]
		segundos[59] = [0, 0, 0, 0, 0]
		segundos[90] = [0, 0, 0, 0, 0]
		segundos[91] = [0, 0, 0, 0, 0]
		segundos[92] = [0, 0, 0, 0, 0]
		segundos[93] = [0, 0, 0, 0, 0]
		segundos[94] = [0, 0, 0, 0, 0]
		segundos[95] = [0, 0, 0, 0, 0]
		segundos[96] = [0, 0, 0, 0, 0]
		segundos[97] = [0, 0, 0, 0, 0]
		segundos[98] = [0, 0, 0, 0, 0]
		segundos[99] = [0, 0, 0, 0, 0]
		segundos[100] = [0, 0, 0, 0, 0]
		segundos[101] = [0, 0, 0, 0, 0]
		segundos[102] = [0, 0, 0, 0, 0]
		segundos[103] = [0, 0, 0, 0, 0]
		segundos[104] = [0, 0, 0, 0, 0]
		segundos[105] = [0, 0, 0, 0, 0]
		segundos[106] = [0, 0, 0, 0, 0]
		segundos[107] = [0, 0, 0, 0, 0]
		segundos[108] = [0, 0, 0, 0, 0]
		segundos[109] = [0, 0, 0, 0, 0]
		segundos[110] = [0, 0, 0, 0, 0]
		segundos[111] = [0, 0, 0, 0, 0]
		segundos[112] = [0, 0, 0, 0, 0]
		segundos[113] = [0, 0, 0, 0, 0]
		segundos[114] = [0, 0, 0, 0, 0]
		segundos[115] = [0, 0, 0, 0, 0]
		segundos[116] = [0, 0, 0, 0, 0]
		segundos[117] = [0, 0, 0, 0, 0]
		segundos[118] = [0, 0, 0, 0, 0]
		segundos[119] = [0, 0, 0, 0, 0]
		segundos[120] = [0, 0, 0, 0, 0]
		segundos[121] = [0, 0, 0, 0, 0]
		segundos[122] = [0, 0, 0, 0, 0]
		segundos[123] = [0, 0, 0, 0, 0]
		segundos[124] = [0, 0, 0, 0, 0]
		segundos[125] = [0, 0, 0, 0, 0]
		segundos[126] = [0, 0, 0, 0, 0]
		segundos[127] = [0, 0, 0, 0, 0]
		segundos[128] = [0, 0, 0, 0, 0]
		segundos[129] = [0, 0, 0, 0, 0]
		segundos[130] = [0, 0, 0, 0, 0]
		segundos[131] = [0, 0, 0, 0, 0]
		segundos[132] = [0, 0, 0, 0, 0]
		segundos[133] = [0, 0, 0, 0, 0]
		segundos[134] = [0, 0, 0, 0, 0]
		segundos[135] = [0, 0, 0, 0, 0]
		segundos[136] = [0, 0, 0, 0, 0]
		segundos[137] = [0, 0, 0, 0, 0]
		segundos[138] = [0, 0, 0, 0, 0]
		segundos[139] = [0, 0, 0, 0, 0]
		segundos[140] = [0, 0, 0, 0, 0]
		segundos[141] = [0, 0, 0, 0, 0]
		segundos[142] = [0, 0, 0, 0, 0]
		segundos[143] = [0, 0, 0, 0, 0]
		segundos[144] = [0, 0, 0, 0, 0]
		segundos[145] = [0, 0, 0, 0, 0]
		segundos[146] = [0, 0, 0, 0, 0]
		segundos[147] = [0, 0, 0, 0, 0]
		segundos[148] = [0, 0, 0, 0, 0]
		segundos[149] = [0, 0, 0, 0, 0]
		segundos[150] = [0, 0, 0, 0, 0]
		segundos[151] = [0, 0, 0, 0, 0]
		segundos[152] = [0, 0, 0, 0, 0]
		segundos[153] = [0, 0, 0, 0, 0]
		segundos[154] = [0, 0, 0, 0, 0]
		segundos[155] = [0, 0, 0, 0, 0]
		segundos[156] = [0, 0, 0, 0, 0]
		segundos[157] = [0, 0, 0, 0, 0]
		segundos[158] = [0, 0, 0, 0, 0]
		segundos[159] = [0, 0, 0, 0, 0]
		segundos[160] = [0, 0, 0, 0, 0]
		segundos[161] = [0, 0, 0, 0, 0]
		segundos[162] = [0, 0, 0, 0, 0]
		segundos[163] = [0, 0, 0, 0, 0]
		segundos[164] = [0, 0, 0, 0, 0]
		segundos[165] = [0, 0, 0, 0, 0]
		segundos[166] = [0, 0, 0, 0, 0]
		segundos[167] = [0, 0, 0, 0, 0]
		segundos[168] = [0, 0, 0, 0, 0]
		segundos[169] = [0, 0, 0, 0, 0]
		segundos[170] = [0, 0, 0, 0, 0]
		segundos[171] = [0, 0, 0, 0, 0]
		segundos[172] = [0, 0, 0, 0, 0]
		segundos[173] = [0, 0, 0, 0, 0]
		segundos[174] = [0, 0, 0, 0, 0]
		segundos[175] = [0, 0, 0, 0, 0]
		segundos[176] = [0, 0, 0, 0, 0]
		segundos[177] = [0, 0, 0, 0, 0]
		segundos[178] = [0, 0, 0, 0, 0]
		segundos[179] = [0, 0, 0, 0, 0]
		segundos[180] = [0, 0, 0, 0, 0]
		segundos[181] = [0, 0, 0, 0, 0]
		segundos[182] = [0, 0, 0, 0, 0]
		segundos[183] = [0, 0, 0, 0, 0]
		segundos[184] = [0, 0, 0, 0, 0]
		segundos[185] = [0, 0, 0, 0, 0]
		segundos[186] = [0, 0, 0, 0, 0]
		segundos[187] = [0, 0, 0, 0, 0]
		segundos[188] = [0, 0, 0, 0, 0]
		segundos[189] = [0, 0, 0, 0, 0]
		segundos[190] = [0, 0, 0, 0, 0]
		segundos[191] = [0, 0, 0, 0, 0]
		segundos[192] = [0, 0, 0, 0, 0]
		segundos[193] = [0, 0, 0, 0, 0]
		segundos[194] = [0, 0, 0, 0, 0]
		segundos[195] = [0, 0, 0, 0, 0]
		segundos[196] = [0, 0, 0, 0, 0]
		segundos[197] = [0, 0, 0, 0, 0]
		segundos[198] = [0, 0, 0, 0, 0]
		segundos[199] = [0, 0, 0, 0, 0]
		segundos[200] = [0, 0, 0, 0, 0]
		segundos[201] = [0, 0, 0, 0, 0]
		segundos[202] = [0, 0, 0, 0, 0]
		segundos[203] = [0, 0, 0, 0, 0]
		segundos[204] = [0, 0, 0, 0, 0]
		segundos[205] = [0, 0, 0, 0, 0]
		segundos[206] = [0, 0, 0, 0, 0]
		segundos[207] = [0, 0, 0, 0, 0]
		segundos[208] = [0, 0, 0, 0, 0]
		segundos[209] = [0, 0, 0, 0, 0]
		segundos[210] = [0, 0, 0, 0, 0]
		segundos[211] = [0, 0, 0, 0, 0]
		segundos[212] = [0, 0, 0, 0, 0]
		segundos[213] = [0, 0, 0, 0, 0]
		segundos[214] = [0, 0, 0, 0, 0]
		segundos[215] = [0, 0, 0, 0, 0]
		segundos[216] = [0, 0, 0, 0, 0]
		segundos[217] = [0, 0, 0, 0, 0]
		segundos[218] = [0, 0, 0, 0, 0]
		segundos[219] = [0, 0, 0, 0, 0]
		segundos[220] = [0, 0, 0, 0, 0]
		segundos[221] = [0, 0, 0, 0, 0]
		segundos[222] = [0, 0, 0, 0, 0]
		segundos[223] = [0, 0, 0, 0, 0]
		segundos[224] = [0, 0, 0, 0, 0]
		segundos[225] = [0, 0, 0, 0, 0]
		segundos[226] = [0, 0, 0, 0, 0]
		segundos[227] = [0, 0, 0, 0, 0]
		segundos[228] = [0, 0, 0, 0, 0]
		segundos[229] = [0, 0, 0, 0, 0]
		segundos[230] = [0, 0, 0, 0, 0]
		segundos[231] = [0, 0, 0, 0, 0]
		segundos[232] = [0, 0, 0, 0, 0]
		segundos[233] = [0, 0, 0, 0, 0]
		segundos[234] = [0, 0, 0, 0, 0]
		segundos[235] = [0, 0, 0, 0, 0]
		segundos[236] = [0, 0, 0, 0, 0]
		segundos[237] = [0, 0, 0, 0, 0]
		segundos[238] = [0, 0, 0, 0, 0]
		segundos[239] = [0, 0, 0, 0, 0]
		segundos[240] = [0, 0, 0, 0, 0]
		segundos[241] = [0, 0, 0, 0, 0]
		segundos[242] = [0, 0, 0, 0, 0]
		segundos[243] = [0, 0, 0, 0, 0]
		segundos[244] = [0, 0, 0, 0, 0]
		segundos[245] = [0, 0, 0, 0, 0]
		segundos[246] = [0, 0, 0, 0, 0]
		segundos[247] = [0, 0, 0, 0, 0]
		segundos[248] = [0, 0, 0, 0, 0]
		segundos[249] = [0, 0, 0, 0, 0]
		segundos[250] = [0, 0, 0, 0, 0]
		segundos[251] = [0, 0, 0, 0, 0]
		segundos[252] = [0, 0, 0, 0, 0]
		segundos[253] = [0, 0, 0, 0, 0]
		segundos[254] = [0, 0, 0, 0, 0]
		segundos[255] = [0, 0, 0, 0, 0]
		segundos[256] = [0, 0, 0, 0, 0]
		segundos[257] = [0, 0, 0, 0, 0]
		segundos[258] = [0, 0, 0, 0, 0]
		segundos[259] = [0, 0, 0, 0, 0]
		segundos[260] = [0, 0, 0, 0, 0]
		segundos[261] = [0, 0, 0, 0, 0]
		segundos[262] = [0, 0, 0, 0, 0]
		segundos[263] = [0, 0, 0, 0, 0]
		segundos[264] = [0, 0, 0, 0, 0]
		segundos[265] = [0, 0, 0, 0, 0]
		segundos[266] = [0, 0, 0, 0, 0]
		segundos[267] = [0, 0, 0, 0, 0]
		segundos[268] = [0, 0, 0, 0, 0]
		segundos[269] = [0, 0, 0, 0, 0]
		segundos[270] = [0, 0, 0, 0, 0]
		segundos[271] = [0, 0, 0, 0, 0]
		segundos[272] = [0, 0, 0, 0, 0]
		segundos[273] = [0, 0, 0, 0, 0]
		segundos[274] = [0, 0, 0, 0, 0]
		segundos[275] = [0, 0, 0, 0, 0]
		segundos[276] = [0, 0, 0, 0, 0]
		segundos[277] = [0, 0, 0, 0, 0]
		segundos[278] = [0, 0, 0, 0, 0]
		segundos[279] = [0, 0, 0, 0, 0]
		segundos[280] = [0, 0, 0, 0, 0]
		segundos[281] = [0, 0, 0, 0, 0]
		segundos[282] = [0, 0, 0, 0, 0]
		segundos[283] = [0, 0, 0, 0, 0]
		segundos[284] = [0, 0, 0, 0, 0]
		segundos[285] = [0, 0, 0, 0, 0]
		segundos[286] = [0, 0, 0, 0, 0]
		segundos[287] = [0, 0, 0, 0, 0]
		segundos[288] = [0, 0, 0, 0, 0]
		segundos[289] = [0, 0, 0, 0, 0]
		segundos[290] = [0, 0, 0, 0, 0]
		segundos[291] = [0, 0, 0, 0, 0]
		segundos[292] = [0, 0, 0, 0, 0]
		segundos[293] = [0, 0, 0, 0, 0]
		segundos[294] = [0, 0, 0, 0, 0]
		segundos[295] = [0, 0, 0, 0, 0]
		segundos[296] = [0, 0, 0, 0, 0]
		segundos[297] = [0, 0, 0, 0, 0]
		segundos[298] = [0, 0, 0, 0, 0]
		segundos[299] = [0, 0, 0, 0, 0]
		segundos[300] = [0, 0, 0, 0, 0]
		segundos[301] = [0, 0, 0, 0, 0]
		segundos[302] = [0, 0, 0, 0, 0]
		segundos[303] = [0, 0, 0, 0, 0]
		segundos[304] = [0, 0, 0, 0, 0]
		segundos[305] = [0, 0, 0, 0, 0]
		segundos[306] = [0, 0, 0, 0, 0]
		segundos[307] = [0, 0, 0, 0, 0]
		segundos[308] = [0, 0, 0, 0, 0]
		segundos[309] = [0, 0, 0, 0, 0]
		segundos[310] = [0, 0, 0, 0, 0]
		segundos[311] = [0, 0, 0, 0, 0]
		segundos[312] = [0, 0, 0, 0, 0]
		segundos[313] = [0, 0, 0, 0, 0]
		segundos[314] = [0, 0, 0, 0, 0]
		segundos[315] = [0, 0, 0, 0, 0]
		segundos[316] = [0, 0, 0, 0, 0]
		segundos[317] = [0, 0, 0, 0, 0]
		segundos[318] = [0, 0, 0, 0, 0]
		segundos[319] = [0, 0, 0, 0, 0]
		segundos[320] = [0, 0, 0, 0, 0]
		segundos[321] = [0, 0, 0, 0, 0]
		segundos[322] = [0, 0, 0, 0, 0]
		segundos[323] = [0, 0, 0, 0, 0]
		segundos[324] = [0, 0, 0, 0, 0]
		segundos[325] = [0, 0, 0, 0, 0]
		segundos[326] = [0, 0, 0, 0, 0]
		segundos[327] = [0, 0, 0, 0, 0]
		segundos[328] = [0, 0, 0, 0, 0]
		segundos[329] = [0, 0, 0, 0, 0]
		segundos[330] = [0, 0, 0, 0, 0]
		segundos[331] = [0, 0, 0, 0, 0]
		segundos[332] = [0, 0, 0, 0, 0]
		segundos[333] = [0, 0, 0, 0, 0]
		segundos[334] = [0, 0, 0, 0, 0]
		segundos[335] = [0, 0, 0, 0, 0]
		segundos[336] = [0, 0, 0, 0, 0]
		segundos[337] = [0, 0, 0, 0, 0]
		segundos[338] = [0, 0, 0, 0, 0]
		segundos[339] = [0, 0, 0, 0, 0]
		segundos[340] = [0, 0, 0, 0, 0]
		segundos[341] = [0, 0, 0, 0, 0]
		segundos[342] = [0, 0, 0, 0, 0]
		segundos[343] = [0, 0, 0, 0, 0]
		segundos[344] = [0, 0, 0, 0, 0]
		segundos[345] = [0, 0, 0, 0, 0]
		segundos[346] = [0, 0, 0, 0, 0]
		segundos[347] = [0, 0, 0, 0, 0]
		segundos[348] = [0, 0, 0, 0, 0]
		segundos[349] = [0, 0, 0, 0, 0]
		segundos[350] = [0, 0, 0, 0, 0]
		segundos[351] = [0, 0, 0, 0, 0]
		segundos[352] = [0, 0, 0, 0, 0]
		segundos[353] = [0, 0, 0, 0, 0]
		segundos[354] = [0, 0, 0, 0, 0]
		segundos[355] = [0, 0, 0, 0, 0]
		segundos[356] = [0, 0, 0, 0, 0]
		segundos[357] = [0, 0, 0, 0, 0]
		segundos[358] = [0, 0, 0, 0, 0]
		segundos[359] = [0, 0, 0, 0, 0]
		segundos[360] = [0, 0, 0, 0, 0]
		segundos[361] = [0, 0, 0, 0, 0]
		segundos[362] = [0, 0, 0, 0, 0]
		segundos[363] = [0, 0, 0, 0, 0]
		segundos[364] = [0, 0, 0, 0, 0]
		segundos[365] = [0, 0, 0, 0, 0]
		segundos[366] = [0, 0, 0, 0, 0]
		segundos[367] = [0, 0, 0, 0, 0]
		segundos[368] = [0, 0, 0, 0, 0]
		segundos[369] = [0, 0, 0, 0, 0]
		segundos[370] = [0, 0, 0, 0, 0]
		segundos[371] = [0, 0, 0, 0, 0]
		segundos[372] = [0, 0, 0, 0, 0]
		segundos[373] = [0, 0, 0, 0, 0]
		segundos[374] = [0, 0, 0, 0, 0]
		segundos[375] = [0, 0, 0, 0, 0]
		segundos[376] = [0, 0, 0, 0, 0]
		segundos[377] = [0, 0, 0, 0, 0]
		segundos[378] = [0, 0, 0, 0, 0]
		segundos[379] = [0, 0, 0, 0, 0]
		segundos[380] = [0, 0, 0, 0, 0]
		segundos[381] = [0, 0, 0, 0, 0]
		segundos[382] = [0, 0, 0, 0, 0]
		segundos[383] = [0, 0, 0, 0, 0]
		segundos[384] = [0, 0, 0, 0, 0]
		segundos[385] = [0, 0, 0, 0, 0]
		segundos[386] = [0, 0, 0, 0, 0]
		segundos[387] = [0, 0, 0, 0, 0]
		segundos[388] = [0, 0, 0, 0, 0]
		segundos[389] = [0, 0, 0, 0, 0]
		segundos[390] = [0, 0, 0, 0, 0]
		segundos[391] = [0, 0, 0, 0, 0]
		segundos[392] = [0, 0, 0, 0, 0]
		segundos[393] = [0, 0, 0, 0, 0]
		segundos[394] = [0, 0, 0, 0, 0]
		segundos[395] = [0, 0, 0, 0, 0]
		segundos[396] = [0, 0, 0, 0, 0]
		segundos[397] = [0, 0, 0, 0, 0]
		segundos[398] = [0, 0, 0, 0, 0]
		segundos[399] = [0, 0, 0, 0, 0]
		segundos[400] = [0, 0, 0, 0, 0]
		segundos[401] = [0, 0, 0, 0, 0]
		segundos[402] = [0, 0, 0, 0, 0]
		segundos[403] = [0, 0, 0, 0, 0]
		segundos[404] = [0, 0, 0, 0, 0]
		segundos[405] = [0, 0, 0, 0, 0]
		segundos[406] = [0, 0, 0, 0, 0]
		segundos[407] = [0, 0, 0, 0, 0]
		segundos[408] = [0, 0, 0, 0, 0]
		segundos[409] = [0, 0, 0, 0, 0]
		segundos[410] = [0, 0, 0, 0, 0]
		segundos[411] = [0, 0, 0, 0, 0]
		segundos[412] = [0, 0, 0, 0, 0]
		segundos[413] = [0, 0, 0, 0, 0]
		segundos[414] = [0, 0, 0, 0, 0]
		segundos[415] = [0, 0, 0, 0, 0]
		segundos[416] = [0, 0, 0, 0, 0]
		segundos[417] = [0, 0, 0, 0, 0]
		segundos[418] = [0, 0, 0, 0, 0]
		segundos[419] = [0, 0, 0, 0, 0]
		segundos[420] = [0, 0, 0, 0, 0]
		segundos[421] = [0, 0, 0, 0, 0]
		segundos[422] = [0, 0, 0, 0, 0]
		segundos[423] = [0, 0, 0, 0, 0]
		segundos[424] = [0, 0, 0, 0, 0]
		segundos[425] = [0, 0, 0, 0, 0]
		segundos[426] = [0, 0, 0, 0, 0]
		segundos[427] = [0, 0, 0, 0, 0]
		segundos[428] = [0, 0, 0, 0, 0]
		segundos[429] = [0, 0, 0, 0, 0]
		segundos[430] = [0, 0, 0, 0, 0]
		segundos[431] = [0, 0, 0, 0, 0]
		segundos[432] = [0, 0, 0, 0, 0]
		segundos[433] = [0, 0, 0, 0, 0]
		segundos[434] = [0, 0, 0, 0, 0]
		segundos[435] = [0, 0, 0, 0, 0]
		segundos[436] = [0, 0, 0, 0, 0]
		segundos[437] = [0, 0, 0, 0, 0]
		segundos[438] = [0, 0, 0, 0, 0]
		segundos[439] = [0, 0, 0, 0, 0]
		segundos[440] = [0, 0, 0, 0, 0]
		segundos[441] = [0, 0, 0, 0, 0]
		segundos[442] = [0, 0, 0, 0, 0]
		segundos[443] = [0, 0, 0, 0, 0]
		segundos[444] = [0, 0, 0, 0, 0]
		segundos[445] = [0, 0, 0, 0, 0]
		segundos[446] = [0, 0, 0, 0, 0]
		segundos[447] = [0, 0, 0, 0, 0]
		segundos[448] = [0, 0, 0, 0, 0]
		segundos[449] = [0, 0, 0, 0, 0]
		segundos[450] = [0, 0, 0, 0, 0]
		segundos[451] = [0, 0, 0, 0, 0]
		segundos[452] = [0, 0, 0, 0, 0]
		segundos[453] = [0, 0, 0, 0, 0]
		segundos[454] = [0, 0, 0, 0, 0]
		segundos[455] = [0, 0, 0, 0, 0]
		segundos[456] = [0, 0, 0, 0, 0]
		segundos[457] = [0, 0, 0, 0, 0]
		segundos[458] = [0, 0, 0, 0, 0]
		segundos[459] = [0, 0, 0, 0, 0]
		segundos[460] = [0, 0, 0, 0, 0]
		segundos[461] = [0, 0, 0, 0, 0]
		segundos[462] = [0, 0, 0, 0, 0]
		segundos[463] = [0, 0, 0, 0, 0]
		segundos[464] = [0, 0, 0, 0, 0]
		segundos[465] = [0, 0, 0, 0, 0]
		segundos[466] = [0, 0, 0, 0, 0]
		segundos[467] = [0, 0, 0, 0, 0]
		segundos[468] = [0, 0, 0, 0, 0]
		segundos[469] = [0, 0, 0, 0, 0]
		segundos[470] = [0, 0, 0, 0, 0]
		segundos[471] = [0, 0, 0, 0, 0]
		segundos[472] = [0, 0, 0, 0, 0]
		segundos[473] = [0, 0, 0, 0, 0]
		segundos[474] = [0, 0, 0, 0, 0]
		segundos[475] = [0, 0, 0, 0, 0]
		segundos[476] = [0, 0, 0, 0, 0]
		segundos[477] = [0, 0, 0, 0, 0]
		segundos[478] = [0, 0, 0, 0, 0]
		segundos[479] = [0, 0, 0, 0, 0]
		segundos[480] = [0, 0, 0, 0, 0]
		segundos[481] = [0, 0, 0, 0, 0]
		segundos[482] = [0, 0, 0, 0, 0]
		segundos[483] = [0, 0, 0, 0, 0]
		segundos[484] = [0, 0, 0, 0, 0]
		segundos[485] = [0, 0, 0, 0, 0]
		segundos[486] = [0, 0, 0, 0, 0]
		segundos[487] = [0, 0, 0, 0, 0]
		segundos[488] = [0, 0, 0, 0, 0]
		segundos[489] = [0, 0, 0, 0, 0]
		segundos[490] = [0, 0, 0, 0, 0]
		segundos[491] = [0, 0, 0, 0, 0]


					
				
				
				
		
		
		
		
		
		
		
		
		
		
		
		
		

	
