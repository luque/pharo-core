defaultSpec

	^{#ComposableSpec.	
			#add:.			{{	#model.	#listModel.}.
									#layout:. {#(FrameLayout
													bottomFraction: 0.5).}}.
			#add:.			{{	#model.	#textModel1.}.
									#layout:. {#(FrameLayout
													topFraction: 0.5
													rightFraction: 0.5). }}.
			#add:.			{{	#model.	#textModel2.}.
									#layout:. {#(FrameLayout
													leftFraction: 0.5
													topFraction: 0.5) }}}.