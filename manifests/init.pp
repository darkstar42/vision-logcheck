# Class: vision_logcheck
# ===========================
#
# Parameters
# ----------
#
# Examples
# --------
#
# @example
# contain ::vision_logcheck
#

class vision_logcheck (

) {

  package { 'logcheck':
    ensure => present,
  }

  file { '/etc/logcheck/ignore.d.server/':
    ensure  => directory,
    owner   => 'root',
    group   => 'logcheck',
    mode    => '0644',
    purge   => false,
    recurse => true,
    source  => 'puppet:///modules/vision_logcheck/ignore.d.server/',
    require => Package['logcheck'],
  }

}
