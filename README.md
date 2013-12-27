What is Docker?
===============

This repo is a simple Docker example featured on this blog post:
http://louisalbankim.com/what-is-docker

If you are in hurry, here's how to run it:

```shell
$ vagrant up
# We need to reboot the VM, because of the kernel update (see Vagrantfile)
$ vagrant reload
$ vagrant ssh
$ cd /vagrant
$ docker build -t sinatra .
$ docker run -v /vagrant:/vagrant -p 4567:4567 sinatra ruby /vagrant/hello.rb
```

Now open your browser and visit [http://localhost:4567](http://localhost:4567) and voilà! You should see `Hello world!`.
