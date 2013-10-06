addPassword

	| wrapper editor group user index |
	keychain contents ifNotNil:[:kc | kc unlock ].
	wrapper :=  KeychainEditingWrapper new
					keychain: keychain contents;
					group: '';
					usernamePassword: UsernamePassword new.
					
	editor := KeychainEditor new
				keychainEditingWrapper: wrapper;
				yourself.
	self window ifNotNil: [: w | w openModal: editor openDialogWithSpec window].
	editor cancelled ifTrue: [ ^ self ].
	
	group := wrapper group.
	user :=wrapper usernamePassword.
	keychain contents setUserNamePassword: user forGroup: group.
	keychain contentsChanged.
	index := list listItems indexOf: (group -> user ).
	list setSelectedIndex: index