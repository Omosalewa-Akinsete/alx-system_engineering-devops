# Create a manifest that kills a process named killmenow using Puppet
exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  path        => '/usr/bin',
  onlyif      => '/usr/bin/pgrep -f killmenow',
  logoutput   => 'true',
  refreshonly => 'true',
}
