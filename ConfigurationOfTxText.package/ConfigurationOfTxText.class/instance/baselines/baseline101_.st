baseline101: spec
	<version: '1.0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/TxText/main'.
		spec description: 'Adding Tool-TxWorkspace'.
		spec 
			package: 'TxText-Model';
			package: 'TxTextTests-Model' 
				with: [ spec requires: #('TxText-Model')];
			package: 'TxText-Athens' 
				with: [ spec requires: #('TxText-Model') ];
			package: 'TxText-AthensTests' 
				with: [ spec requires: #('TxText-Athens') ];
			package: 'TxText-Styler' 
				with: [ spec requires: #('TxText-Athens') ];
			package: 'Tool-TxWorkspace' 
				with: [ spec requires: #('TxText-Athens' 'TxText-Styler') ].
		spec
			group: 'default' with: #('Core' 'Tests' 'Tools');
			group: 'Core' with: #('TxText-Model' 'TxText-Athens' 'TxText-Styler' );
			group: 'Tests' with: #('Core' 'TxTextTests-Model' 'TxText-AthensTests');
			group: 'Tools' with: #('Core' 'Tool-TxWorkspace') ].
