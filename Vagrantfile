# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # virtualbox provider
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "2048"]

    override.vm.box_url  = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    override.vm.network :forwarded_port, guest: 3000, host: 3000
    override.ssh.forward_agent = true
  end

  config.vm.provision :shell, path: "provision/shell/install-rvm.sh", args: "stable"
  config.vm.provision :shell, path: "provision/shell/install-ruby.sh", args: "2.2.2"

end

