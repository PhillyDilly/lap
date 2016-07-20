class ntp::service {

	service { 'ntp_service':
		name	  => $ntp::params::service_name,
		ensure    => running,
		enable    => true,
		subscribe => File['/etc/ntp.conf']	# subscribe implies require
	}
	notice(" *** default_servers set to : $default_servers")
	notice(" *** servers set to : $servers")
}
