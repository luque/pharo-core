primGetWrapFrom: anAthensParagraph
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(PangoWrapMode  pango_layout_get_wrap (PangoLayout anAthensParagraph))