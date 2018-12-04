I am responsible for reading a data file as exported by the OFP parser (https://github.com/NicolasAnquetil/VerveineF.git) and to create a dictionary of IREntities from it
[[[
	IRReader readFromFile: 'output.ir'
]]] 

I can also convert my IREntities into famix ones (thus populating a Famix Model) in an orderly fation
[[[
	self toFamix
]]] 
