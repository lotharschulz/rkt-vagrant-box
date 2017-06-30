A virtualbox to test [rocket](https://github.com/coreos/rocket) container engine locally.
-------------------

#### preconditions

- [*nix-like operating system](https://en.wikipedia.org/wiki/Unix-like)
- [virtual box](https://www.virtualbox.org/)
- [vagrant](https://www.vagrantup.com/)

### sample usage

- ```vagrant up```
- ```vagrant ssh```
  - `rkt help`
  - `sudo ~/rkt-v1.25.0/rkt list`
  - fetch nginx docker image  
    ```sudo ~/rkt-v1.25.0/rkt --insecure-options=image fetch docker://quay.io/zanui/nginx```
  - run an aci image like quay.io/coreos/alpine-sh (see also [getting started with rkt](https://coreos.com/blog/getting-started-with-rkt-1.0.html) tutorial)  
    ```sudo ~/rkt-v1.25.0/rkt run --interactive quay.io/coreos/alpine-sh```
    - verify alpine version
      ```cat /etc/*release```
    - CRTL D to leave the container
  - `sudo ~/rkt-v1.25.0/rkt list`
    - sample output:
      ```
      UUID		APP		IMAGE NAME			STATE	CREATED		STARTED		NETWORKS
      5001a5d9	alpine-sh	quay.io/coreos/alpine-sh:latest	exited	1 minute ago	1 minute ago
      ```
  - `sudo ~/rkt-v1.25.0/rkt status [UUID]` e.g. `sudo ~/rkt-v1.25.0/rkt status 500`
    - sample output:
    ```
    state=exited
    created=2017-04-23 06:30:37.453 +0000 UTC
    started=2017-04-23 06:30:37.593 +0000 UTC
    pid=1979
    exited=true
    app-alpine-sh=0
    ```



In case you have older vagrant boxes, you may use:

- ```vagrant box list```
- ```vagrant box remove rkt-vbox-ansible # specifiy boxname```
- ```vagrant destroy #(clean up local vagrant boxes)```

### contributing

1. Fork this repo, develop and test your code changes.
1. Submit a pull request including a related section in the readme.

### further coreos rocket reading

- [rocket ob github](https://github.com/coreos/rocket/blob/master/README.md)
- [coreos blog](https://coreos.com/blog/)

### rocket & kubernetes

- [rktnetes brings rkt container engine to Kubernetes](http://blog.kubernetes.io/2016/07/rktnetes-brings-rkt-container-engine-to-Kubernetes.html)
- [rktnetes-workshop](https://github.com/coreos/rktnetes-workshop)
