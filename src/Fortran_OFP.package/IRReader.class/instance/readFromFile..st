reading
readFromFile: filename
	filename asFileReference readStreamDo: [:stream |
		self readFromStream: stream
	]