Vbox to test [rocket](https://github.com/coreos/rocket)
-------------------

#### preconditions

- [*nix-like operating system](https://en.wikipedia.org/wiki/Unix-like)
- [virtual box](https://www.virtualbox.org/)
- [vagrant](https://www.vagrantup.com/)
- [ansible](http://www.ansible.com/home)

### sample usage

- vagrant up
- vagrant ssh
-  cd rkt-v1.9.1
-  ./rkt help
-  sudo ./rkt list
- ./rkt status

In case you have older vagrant box, you may use:

- vagrant box list
- vagrant box remove [boxname e.g. rkt-vbox-ansible]
- vagrant destroy (clean up local vagrant boxes)


#### further coreos rocket reading

- [rocket ob github](https://github.com/coreos/rocket/blob/master/README.md)
- [coreos blog](https://coreos.com/blog/)

===
#### License


Copyright © 2015 Zalando SE

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
