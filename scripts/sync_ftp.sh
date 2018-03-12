lftp -d -e "set ftp:ssl-force true; \
set ftps:initial-prot; \
set ftp:ssl-protect-data true; \
set ssl:verify-certificate no; \
connect hostname; \
user user pw; \
set ftp:acct ACCT; \
lcd /local; \
dir; \
pwd; \
help; \
cd files/; \
mirror --Move sync/ sync/; \
exit"
