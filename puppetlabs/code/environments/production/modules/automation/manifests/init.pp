# Class: automation
# ===========================
#
# Full description of class automation here.
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
#    class { 'automation':
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

# MUDEI ALGUMA COISA

class automation {
  $packages = ['java', 'jenkins', 'rundeck']

  $services = ['jenkins', 'rundeckd']

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
  }

  package { $packages:
	ensure => present
  }

  service {$services:
    ensure => running,
    enable => true
  }

  Yumrepo['jenkins']
    -> Yumrepo['rundeck']
      -> Package[$packages]
        -> Service[$services]
}
