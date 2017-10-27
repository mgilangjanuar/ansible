ansible
=======

Ansible playbook collections for Redmine (+ Agile plugin) and Phabricator.

## Requirements
 - Ubuntu >= 16.04
 - SSH
 - Ansible

## How to install
 - Clone repository `git clone https://github.com/mgilangjanuar/ansible.git`
 - Edit `hosts` with your hosts (default host on `virtualbox`)
 - Install Redmine
```
chmod +x install-redmine.sh
./install-redmine.sh
```
 - Install Phabricator
```
chmod +x install-phabricator.sh
./install-phabricator.sh
```
 - Redmine will serve on `http://your-host:666` and Phabricator will serve on `http://your-host:999`

## How to contribute
Please read [CONTRIBUTING.md](https://github.com/mgilangjanuar/ansible/blob/master/CONTRIBUTING.md)

## License
[MIT](https://github.com/mgilangjanuar/ansible/blob/master/LICENSE.md)
