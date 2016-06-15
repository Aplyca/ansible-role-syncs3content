#!/bin/bash
# Test SyncS3Content provisioned with Ansible

cd $(dirname "$0") && cd ..

echo "Checking syntax"

ansible-playbook -i inventories/local playbooks.yml --connection=local --extra-vars "@tests/tests.yml" --syntax-check

echo "Running role"
ansible-playbook -i inventories/local playbooks.yml --connection=local --extra-vars "@tests/tests.yml"

echo "Checking idempotence"
ansible-playbook -i inventories/local playbooks.yml --connection=local --extra-vars "@tests/tests.yml" | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)
