# awk

### apache2 status
```
# -f stands for file
awk -f ap2_s.awk /var/log/apache2/access.log |sort
```
### apache2 non '200' status
```
# -f stands for file
awk -f ap2_ne200.awk /var/log/apache2/access.log
```
### apache2 IP counter
```
awk -f ap2_ip.awk /var/log/apache2/access.log
```
# Other
```
#awk takes prints every 7th argument of file, pre-sorts for collect unique values,
print only unique values with counting it and sort it in reverse compared by numeric
awk '{print $7}' /var/log/apache2/access.log | sort | uniq -c | sort -rn
```