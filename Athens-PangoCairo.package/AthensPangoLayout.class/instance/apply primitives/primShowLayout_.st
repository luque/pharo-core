primShowLayout: aCairoCanvas 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>

	self nbCall: #(void pango_cairo_show_layout(
			cairo_t aCairoCanvas, 
			PangoLayout self ) )