### Installation
Navigate to https://www.vagrantup.com/downloads.html and download the installer for your OS.  You will also need a copy of [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

After a successful installation, install the vagrant guest editions plugin:
`vagrant plugin install vagrant-vbguest`

### Initial startup
```bash
vagrant up
```
This may take a while...

### Login to vm
```bash
vagrant ssh
```

Local files are synced with a folder in the vm located at:
```bash
cd ~/vagrant
```

#### Notes
connecting pgAdmin to vagrant postgres db: http://theneum.com/blog/connect-to-vagrant-postgres-database-via-pgadmin3-on-mac/
