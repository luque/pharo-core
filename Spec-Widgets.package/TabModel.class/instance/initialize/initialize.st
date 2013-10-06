initialize
	"Initialization code for TabModel"

	super initialize.

	label := '' asValueHolder.
	icon := self defaultIcon asValueHolder.
	morph := nil asValueHolder.
	retrievingBlock := nil asValueHolder.
	menu := nil asValueHolder.
	actions := OrderedCollection new asValueHolder.
	closeable := true asValueHolder.
	tabSelectedAction := [] asValueHolder.
	
	label whenChangedDo: [ :new | self widget ifNotNil: [ :w | w label: new ] ].
	icon whenChangedDo: [ :new | self widget ifNotNil: [ :w | w icon: new ] ].
	morph whenChangedDo: [ :new | self widget ifNotNil: [ :w | w morph: new ] ].
	retrievingBlock whenChangedDo: [ :new | self widget ifNotNil: [ :w | w retrievingBlock: new ] ].
	menu whenChangedDo: [ :new | self widget ifNotNil: [ :w | w menu: new ] ].
	actions whenChangedDo: [ :new | self widget ifNotNil: [ :w | w actions: new ] ].
	closeable whenChangedDo: [ :new | self widget ifNotNil: [ :w | w closeable: new ] ].