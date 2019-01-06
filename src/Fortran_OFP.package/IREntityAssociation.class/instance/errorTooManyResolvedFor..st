converting
errorTooManyResolvedFor: aName
	(IRNameResolutionException new
		messageText: aName , ' resolved to more than one entity')
		signal