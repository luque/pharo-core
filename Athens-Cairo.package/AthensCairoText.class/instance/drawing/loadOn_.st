loadOn: aCanvas
	fontFamily notNil ifTrue:[
		self
			primSelectFont:  fontFamily
				slant:  fontSlant
				weight:  fontWeight 
				on: aCanvas] .
	fontSize notNil ifTrue:[		
		self primSetFontSize:  fontSize on: aCanvas ]