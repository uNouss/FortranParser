convertion
readFromFile: filename
	filename asFileReference readStreamDo: [:stream |
		self readFromStream: stream
	]