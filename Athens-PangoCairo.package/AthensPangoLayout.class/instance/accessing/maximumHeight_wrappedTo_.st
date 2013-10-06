maximumHeight: aHeight wrappedTo: aWidth
	"If height is positive, it will be the maximum height of the layout. Only lines would be shown that would fit, and if there is any text omitted, an ellipsis added. At least one line is included in each paragraph regardless of how small the height value is. A value of zero will render exactly one line for the entire layout."

"Height setting only has effect if a positive width is set on layout and ellipsization mode of layout is not PANGO_ELLIPSIZE_NONE. "
	
	self ellipsizeHeight: aHeight  ; wrapWidth: aWidth