class filedemo {

	file { '/root/motd':
		ensure  => present,
		#content => 'this is my motd file managed by content attribute',
		source  => 'puppet:///modules/filedemo/motd',
		owner   => root,
		group   => root,
		mode    => '0644',

	}

	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',
	}

}
