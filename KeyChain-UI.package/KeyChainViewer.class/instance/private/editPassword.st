editPassword

	list selectedItem
		ifNil: [ ^ self ]
		ifNotNil: [:it || wrapper editor |
			keychain contents ifNotNil:[:kc | kc unlock ].
			wrapper :=  KeychainEditingWrapper new
							keychain: keychain contents;
							group: it key;
							usernamePassword: it value.
							
			editor := KeychainEditor new
						keychainEditingWrapper: wrapper;
						yourself.
			self window ifNotNil: [: w | w openModal: editor openDialogWithSpec window ].
			editor cancelled ifTrue: [ ^ self ].
			it key: wrapper group.
			it value: wrapper usernamePassword.
			keychain contentsChanged.
			list setSelectedItem: it ]