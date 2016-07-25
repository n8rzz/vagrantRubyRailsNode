# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_API_VERSION = "2"

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "2048"]

    override.vm.box = "ubuntu/trusty64"
    override.vm.network :forwarded_port, guest: 3000, host: 3000
    override.ssh.forward_agent = true
  end

  config.vm.provision :file, source: "provision/file/vimrc", destination: "~/.vimrc"
  config.vm.provision :file, source: "provision/file/bash_profile", destination: "~/.bash_profile"

  config.vm.provision :shell, path: "provision/shell/update-system.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-system-packages.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-postgresql.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-rvm.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-ruby.sh", args: "2.3.0 rails", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-node.sh", privileged: false
  config.vm.provision :shell, path: "provision/shell/install-vim-plugins.sh", privileged: false
end

