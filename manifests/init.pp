class serverlist_fix {

  if $kernel == 'windows' {
    $path = 'C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf'
  }
  else {
    $path = '/etc/puppetlabs/puppet/puppet.conf'
  }

  file_line { 'remove_serverlist':
    ensure => absent,
    path   => "$path",
    line   => 'server_list = pcmlb.na.xom.com:8140',
  }
}
