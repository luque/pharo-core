fillOn: aCanvas
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #(void cairo_fill (AthensCairoCanvas aCanvas ))