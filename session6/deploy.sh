#!/bin/bash

local_ip_address=`curl ipinfo.io/ip`
ansible-playbook --extra-vars local_ip_address=$local_ip_address deploy.yaml