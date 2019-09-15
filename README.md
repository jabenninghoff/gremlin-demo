# gremlin-demo
Vagrant configuration for simple demo of Gremlin - https://www.gremlin.com

**requires:** [virtualbox](https://www.virtualbox.org), [vagrant](https://www.vagrantup.com)

copy `gremlind.example` to `gremlind`, add your Gremlin Team ID and Team Secret and run `vagrant up`!

## Demo

CPU demo
```sh
vagrant ssh
htop
```

shutdown demo
```sh
tail -f ubuntu-bionic-18.04-cloudimg-console.log
```
