class ntp {
  
  $ntpserver = hiera('ntp-server')	

  package {'ntp':
    ensure => latest;
  }

  service {'ntpd':
    ensure => running;
  }

}
