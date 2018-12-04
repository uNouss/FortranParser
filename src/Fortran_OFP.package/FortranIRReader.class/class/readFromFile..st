instance creation
readFromFile: aFilename
	^ (self on: aFilename)
			read