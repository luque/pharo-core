renderCharacters: aString from: start to: end

	| utfString extents currentPt |

	utfConverter convert: aString from: start to: end.

	font lock.
	
	canvas
		setScaledFont: font;
		setFontSize: originalFont pixelSize.
		
	canvas 
		setPathMatrix;
		newPath;
		moveToX: advance x Y: advance y.

	canvas paint loadOn: canvas.

	currentPt := canvas getCurrentPoint.
	
	canvas	showText: utfConverter buffer.
	font unlock.		
	
	^ canvas getCurrentPoint - currentPt.

	"cairo_show_text ()"
	