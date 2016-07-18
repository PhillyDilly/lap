class base::ssh {
	case $osfamily {
		'RedHat': {$ssh_name = 'sshd'}
		'Debian': {$ssh_name = 'ssh'}
		default : { warning('os not supported by SSH')}
}
	package {'openssh-package':	# name title
		name   => 'openssh-server',	
		ensure => present,
	}

	file { '/etc/ssh/sshd_config': # title
		ensure  => file,
		owner   => 'root',
		group   => 'root',
		mode	=> '0600',
		source  => 'puppet:///modules/base/sshd_config',	# files dir is inherent
		require => Package['openssh-package'],
		notify  => Service['ssh-service'],	# Notify implies sshd service must be started?
		#notify  => Service['ssh-service-name-two'],	# use alias below
	}
	
	service { 'ssh-service':		# title acts as service name as well here
		name	  => $ssh_name,
		ensure    => running,
		alias     => 'ssh-service-name-two',
		enable    => true,
	}
}
