#Script prints how many times each browser connected with server
#Script take first argument of file of each line
{ browser[$12]++ }
END {
for (i in browser)
print i, " connected ",browser[i]," times." }
