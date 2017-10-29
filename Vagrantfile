Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 999, host: 8099

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y sl python-minimal ssh ansible
    ansible-playbook -i /vagrant/hosts -u root /vagrant/playbooks/lamp.yml --connection=local
    ansible-playbook -i /vagrant/hosts -u root /vagrant/playbooks/phabricator.yml --connection=local
  SHELL
end
