class ntp (
  Array[String] $servers
)
  {
  package {'ntp':
    ensure => latest;
  }

  service {'ntpd':
    ensure => running;
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    content => epp('ntp/ntp.conf.epp'),
  } ~> Service['ntpd']

}
