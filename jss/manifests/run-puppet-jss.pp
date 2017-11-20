# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet-jss.sh':
  source => '/etc/puppetlabs/code/environments/github/jss/files/run-puppet-jss.sh',
  mode   => '0755',
}

cron { 'run-puppet-jss':
  command => '/usr/local/bin/run-puppet-jss.sh',
  hour    => '*',
  minute  => '*/15',
}
