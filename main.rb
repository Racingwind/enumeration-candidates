# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates
# pp experienced?(@candidates[0])
# pp experienced?(@candidates[1])

# pp find(5)
# pp find(1)

# pp qualified_candidates(@candidate)

pp ordered_by_qualifications(@candidate)