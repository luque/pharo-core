wrapValueFrom: anInt
	^anInt caseOf:{
		[PANGO_WRAP_WORD ]->['word'].
  		[PANGO_WRAP_CHAR ]->['char'].
  		[PANGO_WRAP_WORD_CHAR ]->['wordChar'].
	}