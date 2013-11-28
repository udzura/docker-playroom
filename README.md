Docker test
===========

How to
------

```bash
bundle install
librarian-puppet install
vagrant box add docker https://oss-binaries.phusionpassenger.com/vagrant/boxes/ubuntu-12.04.3-amd64-vbox.box
vagrant up
vagrant provision
vagrant ssh
```

Then

```
sudo docker version
```

Author
------

Uchio KONDO <udzura@udzura.jp> / paperboy&co.

License
-------

Maybe IT MIT
