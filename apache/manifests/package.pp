class apache::package ($package_name = $apache::params::package_name) {
	package { 'apache':		# name var
		name   => $package_name,
		ensure => present,
	}
}
