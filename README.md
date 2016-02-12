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
ansible-galaxy install Aplyca.SyncS3Content
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:

```yaml
dependencies:
  - { role: Aplyca.SyncS3Content }
```

Ask for action to perform
--------------------
You can prompt for the `action` to perform in the playbook, like this: 

```yaml
---
- hosts: sync.server.com
  gather_facts: no
  vars_prompt:
    - name: "action"
      prompt: "What action you want to perform [tos3/froms3]?"
      private: no
      default: False
  roles:
    - { role: Aplyca.SyncS3Content, tags: ["syncs3content"] }
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
