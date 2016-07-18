class localusers {
	
	user { 'admin':

		ensure 		=> present,
		shell  		=> '/bin/bash',
		home   		=> '/home/admin',
		gid    		=> 'wheel',
		managehome 	=> true,
		password	=> '$1$HqluaKDj$ZwDry4.VJhcBLhiGUM6OE/',
	}

	user { 'jeff':
	
		ensure		=> 'present',
		shell		=> '/bin/bash',
		home		=> '/home/jeff',
		groups		=> ['wheel', 'finance'],
		managehome	=> 'true',

	}
}
