markAsConflict
	"Mark the operation as unresolved conflict."
	
	self selectedChangeWrapper operation beConflict.
	self changed: #changes.
	self updateSource.