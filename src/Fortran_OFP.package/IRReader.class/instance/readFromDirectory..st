converting
readFromDirectory: dirname
	dirname asFileReference entries do: [:file |
		(file name endsWith: self irFileExtension)
		ifTrue: [ self readFromFile: file fullName ]
	]