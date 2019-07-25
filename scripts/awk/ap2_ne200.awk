#Simple script to output non 200 HTTP codes with full content
#For every HTTP status code not equal to '200'...
{ if ( $9 != "200" )
#...get the columns needed to process later
record[$9," ",$7] }
END {
#for each element in record arr
for (r in record)
#print elements '$9," ",$7', also add counter 'record[r]' of how much bounds
print r, " repeats ", record[r], " times." }