I read a data file as exported by the OFP parser (https://github.com/NicolasAnquetil/VerveineF.git) and creates a dictionary of 'entities' from it

These entities are themselves dictionaries of key / values describing the Famix entities to be later created.

use:
FortranIRReader readFromFile: 'output.ir'.
