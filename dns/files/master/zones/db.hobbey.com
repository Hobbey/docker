$TTL    604800
@       IN      SOA     ns1.hobbey.com. admin.hobbey.com. (
         2017072500     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;

; name servers - NS records
        IN      NS      ns1.hobbey.com.
        IN      NS      ns2.hobbey.com.

; name servers - A records
ns1.hobbey.com.         IN      A       192.168.2.101
ns2.hobbey.com.         IN      A       192.168.2.102

; server
ubuntu1.hobbey.com.     IN      A       192.168.2.101
ubuntu2.hobbey.com.     IN      A       192.168.2.102
ubuntu3.hobbey.com.	IN	A	192.168.2.103

; local infra
mirror-apt.hobbey.com.  IN      A       192.168.2.101   
mirror-yum.hobbey.com.  IN      A       192.168.2.101
ntp.hobbey.com.         IN      A       192.168.2.101

; service
docker-registry.hobbey.com.     IN      A       192.168.2.101
puppet.hobbey.com.              IN      A       192.168.2.101
