Ansible Role Sync From and To S3
====================

An Ansible role that sync app content from and to S3 on Debian/Ubuntu.

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-syncs3content.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-syncs3content)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-syncs3content.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-syncs3content)

Requirements
------------

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-syncs3content/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

Installation
------------

Using ansible galaxy:

```bash
ansible-galaxy install aplyca.SyncS3Content
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:

```yaml
dependencies:
  - { role: aplyca.SyncS3Content }
```

Ask for confirmation
--------------------
This is a risky tasks so the role ask for a variable `confirmation`, you can add the confirmation in the playbook, like this: 

```yaml
---
- hosts: sync.server.com
  gather_facts: no
  vars_prompt:
    - name: "confirmation"
      prompt: "Are you sure to sync content from S3 [y/n]?"
  roles:
    - { role: aplyca.SyncS3Content, tags: ["syncs3content"] }
```

Role Variables
--------------
See default variables: https://github.com/Aplyca/ansible-role-syncs3content/blob/master/defaults/main.yml

Dependencies
------------

None


License
-------

MIT / BSD

Author Information
------------------

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
