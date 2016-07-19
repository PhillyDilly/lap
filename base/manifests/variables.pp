class base::variables { 

	$localvar = "localvar"
	$topscope = "topvar" 

	$nodescope = "new nodescope from variablesi class"

	notify { "${::topscope} is your top scope variable": }
	notify { "${nodescope} is your node scope variable": }
	notify { "${localvar} is your local scope variable": }
	notify { "${::operatingsystem} is your operating system":}

}
