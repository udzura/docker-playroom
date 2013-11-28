class vagrant {
  include git
  include docker
  class { 'golang':
    package_name => 'golang-weekly'
  }

  rbenv::install { 'vagrant': }
  rbenv::compile { '2.0.0-p353':
    user   => 'vagrant',
    global => true
  }

  package {
    'tmux':
  }
}