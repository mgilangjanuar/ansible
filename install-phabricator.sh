#!/bin/bash

ansible-playbook -i hosts -u root playbooks/lamp.yml
ansible-playbook -i hosts -u root playbooks/phabricator.yml