Vagrant.configure("2") do |config|
  
    config.vm.box = "ubuntu/xenial64"
    config.vm.network "forwarded_port", guest: 8069, host: 8069
  
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y sl python-minimal ssh ansible
      ansible-playbook -i /vagrant/hosts -u root /vagrant/playbooks/odoo.yml --connection=local
    SHELL
  end