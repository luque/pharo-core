baseline11: spec 
        <version: '1.1-baseline'>
        
        spec for: #pharo do: [
                spec blessing: #baseline.
                self fuelRepository: spec.    

                spec 
                        package: 'Fuel';
                        package: 'FuelBenchmarks' with: [ spec requires: 'Fuel' ];
                        package: 'FuelBenchmarksMC2' with: [ 
					spec 
						requires: 'FuelBenchmarks';
						requires: 'Monticello2' ];
                        package: 'FuelBenchmarksMagma' with: [ 
					spec
						requires: 'FuelBenchmarks';
						requires: 'Magma' ];
                        package: 'FuelProgressUpdate' with: [ spec requires: 'Fuel' ].


                spec
				project: 'Monticello2' with: [
				spec
					className: 'ConfigurationOfMonticello2';
					loads: #('DEFAULT');
					file: 'ConfigurationOfMonticello2';
					repository: 'http://source.wiresong.ca/mc/' ].
                spec
				project: 'Magma' with: [
				spec
					className: 'ConfigurationOfMagma';
					loads: #('default');
					file: 'ConfigurationOfMagma';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].

                spec
                        group: 'default' with: #('Fuel' 'Benchmarks' );
                        group: 'Core' with: #('Fuel');
                        group: 'CoreWithProgressBar' with: #('Fuel' 'FuelProgressUpdate');
                        group: 'Benchmarks' with: #('FuelBenchmarks');
				group: 'MC2Benchmarks' with: #('FuelBenchmarksMC2');
				group: 'MagmaBenchmarks' with: #('FuelBenchmarksMagma') ].