export GITLAB_CERT_FOLDER="/etc/gitlab/ssl/"
export NGINX_CERT_FOLDER="/etc/nginx/certs"
export APACHE2_CERT_FOLDER="/etc/apache2/certs"
export WEBMIN_CERT_FOLDER="/etc/webmin/certs"
export GITLAB_EMBEDDED_CERT_FOLDER="/opt/gitlab/embedded/ssl/certs"
export SYNO_CERT_FOLDER="/usr/syno/etc/certificate/system/default"
export BITNAMI_APACHE_CERT_FOLDER="/bitnami/apache2/conf"
export BITNAMI_NGINX_CERT_FOLDER="/bitnami/nginx/conf"

export Ali_Key='LTAILea8DBK9q6VC'
export Ali_Secret='a1jgMUz8ZY0um9Vpzn4UugqWAD8eHi'
acme.sh --issue --dns dns_ali  -d lockyse7en.com  -d '*.lockyse7en.com' \
	--installcert -d '*.lockyse7en.com' \
	--cert-file "$CERT_FOLDER/cert.pem" \
	--key-file "$CERT_FOLDER/privkey.pem" \
	--fullchain-file "$CERT_FOLDER/fullchain.pem" \
	--capath "$CERT_FOLDER/chain.pem" 
	
export Ali_Key='LTAILea8DBK9q6VC'
export Ali_Secret='a1jgMUz8ZY0um9Vpzn4UugqWAD8eHi'
acme.sh --issue --dns dns_ali  -d lockyse7en.com  -d '*.lockyse7en.com' \
	--installcert -d '*.lockyse7en.com' \
	--cert-file "$GITLAB_CERT_FOLDER/cert.pem" \
	--key-file "$GITLAB_CERT_FOLDER/privkey.pem" \
	--fullchain-file "$GITLAB_CERT_FOLDER/fullchain.pem" \
	--capath "$GITLAB_CERT_FOLDER/chain.pem" 
  
--capath ca.cer chain.pem
--fullchain-file fullchain.cer fullchain.pem
--cert-file lockyse7en.com.cer cert. server.crt
--key-file lockyse7en.com.key  privkey.pem server.key

#Synology
export CERT_FOLDER="/usr/syno/etc/certificate/system/default"
export Ali_Key='LTAILea8DBK9q6VC'
export Ali_Secret='a1jgMUz8ZY0um9Vpzn4UugqWAD8eHi'
acme.sh  --issue --dns dns_ali  -d lockyse7en.com  -d *.lockyse7en.com  \
--installcert -d *.lockyse7en.com \
--cert-file "$CERT_FOLDER/cert.pem" \
--key-file "$CERT_FOLDER/privkey.pem" \
--fullchain-file "$CERT_FOLDER/fullchain.pem" \
--capath "$CERT_FOLDER/chain.pem" \

ln -s lockyse7en.com.csr  cert.csr 
ln -s lockyse7en.com.csr.conf cert.csr.conf
ln -s lockyse7en.com.conf 
