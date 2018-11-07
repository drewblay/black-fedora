# Check if firewalld is running 
fr=$(systemctl is-active firewalld)

if [ "$fr" = "active" ]
then
	echo "Firewalld detected, stopping service"
	systemctl stop firewalld
fi
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall

if [ "$fr" = "active" ]
then
	systemctl start firewalld
	echo "Firewalld restarted."
fi
