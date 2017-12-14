node "automation.dexter.com.br" {
	# yum install java

	# sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

	# sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
	
	# sudo yum install jenkins

	# garantir rodando

	# rpm -Uvh http://repo.rundeck.org/latest.rpm 
	# yum install rundeck 
	# service rundeckd start

}

node "docker.dexter.com.br" {
	# sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

	# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

	# sudo apt install docker-ce
}
