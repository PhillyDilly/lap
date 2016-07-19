class base::params {

	case $::osfamily {
		'RedHat': {$ssh_name = 'sshd'}
		'Debian': {$ssh_name = 'ssh'}
		default : { warning('os not supported by SSH')}
	}

	package {'openssh-package':	# name title
		name   => 'openssh-server',	
		ensure => present,
	}
}
