# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "rkt-vbox-ansible" do |ansible|
    ansible.vm.box = "rkt-vbox-ansible"
    #ansible.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    #ansible.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/wily/20160627/wily-server-cloudimg-amd64-vagrant-disk1.box"
    ansible.vm.box_url = "https://cloud-images.ubuntu.com/releases/16.04/release/ubuntu-16.04-server-cloudimg-amd64-vagrant.box"

    ansible.vm.hostname = "node1"
    ansible.vm.network "private_network", ip: "10.10.10.22"

    ansible.vm.provider :virtualbox do |vb, override|
      vb.memory = 1024
    end
  end

  config.vm.provider "virtualbox" do |v|
    v.gui = false
  end

  config.vm.provision :shell, path: "rkt_bootstrap.sh"

end
