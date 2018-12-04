adding
addEntity: entity at: key
	| irEntity |
	irEntity := IREntity new
						key: key ;
						kind: (entity at: 'kind') ;
						parent: (entity at: 'parent' ifAbsent: nil) ; "root entity"
						data: (entity at: 'data') ;
						irModel: self ;
						yourself.
	entities at: key put: irEntity.
	^ irEntity
	