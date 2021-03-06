testBlockReturnNode
	| tree |
	" no explicit return"
	tree := RBParser parseMethod:
			'tmp [ 3+4 ]'.
	self deny: tree lastIsReturn.
	" no explicit return the block local return should not count as method return "
	tree := RBParser parseMethod:
	      'tmp [^ 3+4 ]'.
	self deny: tree lastIsReturn.
	
	" explicit return"
	tree := RBParser parseMethod:
			'tmp ^ [ 3+4 ]'.
	self assert: tree lastIsReturn.
	