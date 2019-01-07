# FortranParser
A Fortran to MSE importer for Moose.

The actual Fortran parsing is perfomed by a java tool VerveineF (https://github.com/NicolasAnquetil/VerveineF) that exports information in a simple intermediary format in JSON.
This format lists all software entites found and references to these entities.

The importer in this project loads the intermediate representation and generate a Moose model from it.
https://github.com/NicolasAnquetil/VerveineF
