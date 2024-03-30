# Creating a custom HTTP header response, but with Puppet
exec { 'update':
  provider => shell,
  command  => 'sudo apt-get -y update',
  before   => Exec['install Nginx'],
}

exec { 'install Nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['add_header'],
}

$hostname = $facts['hostname']

$add_header_command = 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;    \n\tadd_header X-Served-By \"$HOSTNAME\";/" /etc/nginx/nginx.conf'

exec { 'add_header':
  provider    => shell,
  environment => ["HOSTNAME=${hostname}"],
  command     => $add_header_command,
  before      => Exec['restart Nginx'],
}

exec { 'restart Nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
