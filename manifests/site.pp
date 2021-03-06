class vagrant {
  include git
  include golang
  class { 'docker':
    version => '0.9.0'
  }

  rbenv::install { 'vagrant': }
  rbenv::compile { '2.1.1':
    user   => 'vagrant',
    global => true
  }

  package {
    'tmux':
  }
}
