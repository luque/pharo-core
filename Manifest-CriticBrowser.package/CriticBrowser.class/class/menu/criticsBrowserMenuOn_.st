criticsBrowserMenuOn: aBuilder 
	"I build a menu"
	<worldMenu>
	(aBuilder item: 'Critic Browser')
		action: [ self openOnCurrentWorkingConfiguration];
		order: 10;
		parent: #Tools;
		help: 'To manage rule checks';
		icon: self icon