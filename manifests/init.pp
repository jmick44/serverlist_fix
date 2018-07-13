class serverlist_fix {

  file_line { 'remove_serverlist':
    ensure => absent,
    path   => '/etc/puppetlabs/puppet/puppet.conf',
    line   => 'server_list = pcmlb.na.xom.com:8140',
  }
}
