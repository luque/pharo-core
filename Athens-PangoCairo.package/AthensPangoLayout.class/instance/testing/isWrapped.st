isWrapped 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self pangoNbCall:#(int  pango_layout_is_wrapped (PangoLayout self))
	 