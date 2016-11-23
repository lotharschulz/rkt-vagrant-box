Vbox to test [rocket](https://github.com/coreos/rocket)
-------------------

#### preconditions

- [*nix-like operating system](https://en.wikipedia.org/wiki/Unix-like)
- [virtual box](https://www.virtualbox.org/)
- [vagrant](https://www.vagrantup.com/)

### sample usage

- vagrant up
- vagrant ssh
-  cd rkt-v1.19.0
-  ./rkt help
-  sudo ./rkt list
-  sudo ./rkt status [UUID]
-  \# run nginx docker image  
  sudo ./rkt --insecure-options=image fetch docker://quay.io/zanui/nginx
- \# run an aci image like quay.io/coreos/alpine-sh ([getting started with rkt](https://coreos.com/blog/getting-started-with-rkt-1.0.html))  
  sudo ./rkt run --interactive quay.io/coreos/alpine-sh
 - cat /etc/*release # to verify the alpine version


In case you have older vagrant box, you may use:

- vagrant box list
- vagrant box remove [boxname e.g. rkt-vbox-ansible]
- vagrant destroy (clean up local vagrant boxes)

### contributing

1. Fork this repo, develop and test your code changes.
1. Submit a pull request including a related section in the readme.

#### further coreos rocket reading

- [rocket ob github](https://github.com/coreos/rocket/blob/master/README.md)
- [coreos blog](https://coreos.com/blog/)

##### rocket & kubernetes

- [rktnetes brings rkt container engine to Kubernetes](http://blog.kubernetes.io/2016/07/rktnetes-brings-rkt-container-engine-to-Kubernetes.html)
- [rktnetes-workshop](https://github.com/coreos/rktnetes-workshop)

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
