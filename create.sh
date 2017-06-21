#!/bin/bash

# prep all the servers with required packages
ansible-playbook -i inventory setup-centos7.yml

# setup ucd server
ansible-playbook -i inventory install-ucd.yml

# add agents to all the servers
ansible-playbook -i inventory install-srv-agent.yml
ansible-playbook -i inventory install-sit-agent.yml
ansible-playbook -i inventory install-uat-agent.yml

# setup liberty servers in sit and uat
ansible-playbook -i inventory install-liberty.yml
