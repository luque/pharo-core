storeNameStrategy

	^ storeNameStrategy ifNil: [ self class storeNameStrategy ]