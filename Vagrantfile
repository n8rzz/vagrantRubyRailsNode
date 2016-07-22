# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # virtualbox provider
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "2048"]

    override.vm.box = "ubuntu/trusty64"
#    override.vm.box = "trusty/rubyNode"
#    override.vm.box_url  = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    override.vm.network :forwarded_port, guest: 3000, host: 3000
    override.ssh.forward_agent = true
  end

  config.vm.provision :file, source: "provision/file/vimrc", destination: "~/.vimrc"

  config.vm.provision :shell, path: "provision/shell/update-system.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-postgresql.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-rvm.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-ruby.sh", args: "2.3.0 rails", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-node.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-vim-plugins.sh", privileged: false
end

