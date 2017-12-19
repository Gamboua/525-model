node 'automation.dexter.com.br' {
  yumrepo { 'jenkins':
    baseurl  => 'http://pkg.jenkins.io/redhat-stable',
    descr    => 'Jenkins',
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => 'https://jenkins-ci.org/redhat/jenkins-ci.org.key',
  }

  yumrepo { 'rundeck':
    baseurl  => 'https://dl.bintray.com/rundeck/rundeck-rpm',
    descr    => 'Rundeck',
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => 'http://rundeck.org/keys/BUILD-GPG-KEY-Rundeck.org.key',
    require => Yumrepo['jenkins']
  }

  package { 'java':
    ensure => present
  }

  package { 'jenkins':
    ensure => present,
    require => Package['java']
  }

  package { 'rundeck':
    ensure => present,
    require => Package['java']
  }

  service { 'jenkins':
    ensure => running,
    enable => true,
    require => Package['jenkins']
  }

  service { 'rundeckd':
    ensure => running,
    enable => true,
    require => Package['rundeck']
  }
}

#node 'docker.dexter.com.br' {
#  exec { 'apt-get update':
#    command => '/usr/bin/apt-get update',
#  }

#  package { 'apt-transport-https': 
#    ensure => present
#  }

#  package { 'ca-certificates':
#    ensure => present
#  }

#  package { 'curl':
#    ensure => present
#  }
  
#  package { 'docker-ce':
#    ensure => present,
#  }

#  service { 'docker':
#    ensure => running,
#    enable => true,
#    require => Package['docker-ce']
#  }
#}

node "docker.dexter.com.br" {
$packages = ['ca-certificates', 'curl', 'docker-ce']

  File {
    owner => 0,
    group => 0,
    mode  => '0644',
  }

  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
  }

  file { '/etc/apt/sources.list.d/docker.list':
    ensure  => file,
    content => 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable',
  }

  exec { 'Docker GPG':
    command => 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -',
    path    => '/usr/bin:/bin',
  }

  package { 'apt-transport-https':
    ensure => present,
  }

  package { $packages:
    ensure => present,
  }

  service { 'docker':
    ensure => running,
    enable => true,
  }

  File['/etc/apt/sources.list.d/docker.list']
    -> Exec['Docker GPG']
      -> Package['apt-transport-https']
        ~> Exec['apt-get update']
          -> Package[$packages]
            -> Service['docker']
}

