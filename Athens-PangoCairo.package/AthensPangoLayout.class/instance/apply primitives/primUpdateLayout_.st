primUpdateLayout: aCairoCanvas 
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	self nbCall: #(void pango_cairo_update_layout( 
		cairo_t aCairoCanvas, 
		PangoLayout ) ) 