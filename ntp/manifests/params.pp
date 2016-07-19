class ntp::params {

	case $::operatingsystem {
		'ubuntu': { 
			$template = 'ntp_ubuntu.conf'
			#notice("Ubuntu case selected")
			$service_name = 'ntp'
		}
		'CentOS': { 
			$template = 'ntp_centos.conf'
			#notice("CentOS case selected")
			$service_name = 'ntpd'
		}
		default:  { 
			fail('OS $::operatingsystem is not supported') 
			#notice("inside default, template is set to: $template")
		}
	
	}

}
