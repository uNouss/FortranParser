converting
setParentIfNil: irReader
	parentIR := parentKey
							ifNil: [  irReader ]
							ifNotNil: [
								irReader entityAtKey: parentKey
							]
