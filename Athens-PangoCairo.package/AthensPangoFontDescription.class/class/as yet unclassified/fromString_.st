fromString: aString
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^self pangoNbCall:#(PangoFontDescription pango_font_description_from_string (char * aString))
	