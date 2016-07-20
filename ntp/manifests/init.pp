class ntp {

	package { 'ntp' :

		ensure => present,

	}
	
	include ntp::params
	include ntp::file
	include ntp::service
	notice(" *** default_servers set to : $default_servers")
	notice(" *** servers set to : $servers")

}
