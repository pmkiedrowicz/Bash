#Script prints how many times each IP connected with server
#Script take first argument of file of each line
{ ip[$1]++ }
END {
for (i in ip)
print i, " connected ",ip[i]," times." }