# Class: docker
# ===========================
#
# Full description of class docker here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'docker':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class docker {
	$packages = ['apt-transport-https','ca-certificates', 'curl']

	file {'/etc/apt/sources.list.d/docker.list':
		ensure => file,
		content => 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable'
	}

	exec { 'Docker GPG':
		command => 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -',
		path => '/usr/bin:/bin'
	}

	package {'docker-ce':
		ensure => present
	}

	package { $packages:
		ensure => present
	}

        service { 'docker':
		ensure => running,
		enable => true
	}

	exec { 'apt-get update':
		command => '/usr/bin/apt-get update'
	}

	$www = "/var/www/site"
        $servername = "site.com.br"

	file { '/etc/apache2/sites-available/site.conf':
	    content => template('docker/vhost.erb'),
	    owner   => root,
	    group   => root,
   	    mode    => 644,
	}

	File['/etc/apt/sources.list.d/docker.list']
          -> Package[$packages]       
            -> Exec['Docker GPG']
              ~> Exec['apt-get update']
                -> Package['docker-ce']
		  -> Service['docker']
}
