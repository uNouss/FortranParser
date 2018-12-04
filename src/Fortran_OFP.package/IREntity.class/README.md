I am an IntermediateRepresentation entity.
I can convert myself to a famix entity: 
[[[
	IREntity>>toFamix
]]]

Main instanceV variables:
- kind -- a string for the kind of entity I represent (e.g. 'FUNCTION')
- key -- a string that uniquely identifies myself. Other IREntities may refer to that key (e.g. 'FUNCTIONCALL')
- parent -- the key of my parent IREntity (where I was found in the source code)
- data -- a dictionnary of additional data that I may contain (e.g. source-anchor, cyclomatic-complexity)
famix -- a possible famixEntity that was generated from myself
- irModel -- the IRModel that contains me