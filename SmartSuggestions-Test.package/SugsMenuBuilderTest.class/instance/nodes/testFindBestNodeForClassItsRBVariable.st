testFindBestNodeForClassItsRBVariable
	| node |

	node :=SugsMenuBuilder findBestNodeFor:  SugsMockContext classContext.
	self assert: node class equals: RBVariableNode.
	"Es una forma un tanto molesta de preguntar... es de clase?" 
	self assert:( node binding isLiteral and: [Smalltalk globals  includesAssociation: node binding assoc ]).