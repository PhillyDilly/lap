class ntp::file {

	case $::operatingsystem {
		'ubuntu': { 
			$template = 'ntp_ubuntu.conf'
			#notice("Ubuntu case selected")
		}
		'CentOS': { 
			$template = 'ntp_centos.conf'
			#notice("CentOS case selected")
		}
		default:  { 
			fail('OS $::operatingsystem is not supported') 
			#notice("inside default, template is set to: $template")
		}
	
	}

	file { '/etc/ntp.conf' :
		ensure  => file,
		require => Package['ntp'],
		content => template("ntp/${template}.erb"),
	}
}
