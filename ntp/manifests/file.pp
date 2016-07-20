class ntp::file {

	$template = $ntp::params::template
	$servers  = $ntp::params::default_servers

	notice(" *** tempalate set to : $template")
	notice(" *** default_servers set to : $servers")

	file { '/etc/ntp.conf' :
		ensure  => file,
		require => Package['ntp'],
		content => template("ntp/${template}.erb"),
	}
}
