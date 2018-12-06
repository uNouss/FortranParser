converting
toFamix
	"definitions of Famix entities"
	entities values reject: #isAnonymous thenCollect: #toFamix.

	"references to Famix entities"
	entities values select: #isAnonymous thenCollect: #toFamix.
