class ntp::file {

	$template = $ntp::params::template
	$servers  = $ntp::params::default_servers

	notice(" *** template set to : $template")
	notice(" *** template will be : ntp/${template}.erb")
	notice(" *** default_servers set to : $servers")

	file { '/etc/ntp.conf' :
		ensure  => file,
		require => Package['ntp'],
		content => template("ntp/${template}.erb"),
	}
}
