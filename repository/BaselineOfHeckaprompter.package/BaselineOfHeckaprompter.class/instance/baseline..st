baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Heckaprompter-Experiments' with: [spec requires: #('Core')];
				package: 'Heckaprompter-Model';
				package: 'Heckaprompter-NewModel' with: [spec requires: #('Core')];
				package: 'Heckaprompter-Tools' with: [spec requires: #('Core')];
				package: 'Heckaprompter-Seaside-Core' with: [spec requires: #('Core')];
				package: 'Heckaprompter-Seaside-OAuth2' with: [spec requires: #('Core' 'Seaside')].
				
			spec
				group: 'default' with: #('Core' 'Tests' 'Seaside');
				group: 'Core' with: #('Heckaprompter-Model');
				group: 'Tests' with: #('Heckaprompter-Tests');
				group: 'Seaside' with: #('Heckaprompter-Seaside-Core' 'Heckaprompter-Seaside-OAuth2');
				group: 'optional' with: #('Heckaprompter-Experiments' 'Heckaprompter-NewModel' 'Heckaprompter-Tools' 'Heckaprompter-Unused') ].