convertion
readFromFile: filename
	filename asFileReference readStream: [:stream |
		self readFromStream: stream
	]