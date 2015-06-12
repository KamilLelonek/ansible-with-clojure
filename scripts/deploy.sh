#!/bin/bash

ansible-playbook main.yml -i hosts -u root $@
