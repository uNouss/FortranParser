initialization
fromJSON: json
	key := json at: 'key'.
	kind := json at: 'kind'.
	data := json at: 'data'.
	parentKey := json at: 'parent' ifAbsent: nil.
