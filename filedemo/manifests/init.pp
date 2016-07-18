class filedemo {
	
	File { 			# Default attributes
		owner => 'root',
		group => 'finance',
		mode  => '0660',
	}

	$homedir = "/root"
	$content = "my files content"

	file { "${homedir}/myfile.txt":
		content => $content,
	}

	file { "${homedir}/myfile2.txt":
		content => "myfile2 content",
	}

	file { "${homedir}/myfile3.txt":
		content => "myfile3 content",
		owner   => admin,
		group   => root,
	}
	
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
