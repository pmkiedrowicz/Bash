#Simple script to output all HTTP codes with content
#record[] gets the columns needed to process later
{ record[$9," ",$7] }
END {
#for each element in record arr
for (r in record)
#print elements '$9," ",$7', also add counter 'record[r]' of how much bounds
print r, " repeats ", record[r], " times." }