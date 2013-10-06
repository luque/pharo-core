defaultSpec
	<spec>
	| height width |
	height := 25.
	width := (StandardFonts defaultFont widthOfString: 'Name:') + 10.
	^ { #ComposableSpec.
			#add:. {{#model . #nameLabel } . #layout: .  {#FrameLayout.	#rightFraction:. 0.5. #bottomOffset:. (2*height) negated} }.
			#add:. {{#model. #nameField.}. #layout:. {#FrameLayout.	#leftOffset:. width. #bottomOffset:. (2*height) negated} }.
			#add:. {{#model. #typeLabel.}.
							#layout:. 	{ #FrameLayout.
											#topFraction:. 1.
											#rightFraction:. 0.5.
											#topOffset:. (2*height negated).
											#bottomOffset:. (height negated)}} .										
			#add:.	{{#model. #typeChoice.}. 
							#layout:. 	{ #FrameLayout.
											#topFraction:. 1.
											#leftOffset:. width.
											#topOffset:. (2*height negated).
											#bottomOffset:. (height negated).}}.
																		
			#add:.	{{#model. #toolbar.}.
							#layout:. 	{ #FrameLayout.
											#topFraction:. 1.
											#topOffset:. (height negated) }. }}