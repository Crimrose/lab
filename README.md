# Lab

## Description

A lab environment using Ansible to automate the setup and configuration of a LAMP stack (Linux, Apache, MySQL, PHP). This setup ensures that the environment is consistent and reproducible across different stages such as development, staging, and production.

## Stack

* apache

* mysql - 8.0.40

* php 8.3.6

* Ubuntu 24.04

### Pre-requisites
You must have [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pipx-install).

### Playbook structure 

```
ansible-playbooks/
├── group_vars/
│   ├── all.yaml
│   ├── prod.yaml
│   └── staging.yaml
├── hosts
├── inventory.ini
├── playbook.yml
├── README.md
└── roles/
    ├── apache/
    │   ├── defaults/
    │   │   └── main.yaml
    │   ├── files/
    │   │   └── apache.conf.j2
    │   ├── handlers/
    │   │   └── main.yaml
    │   └── tasks/
    │       └── main.yaml
    ├── deployredexweb/
    │   ├── defaults/
    │   │   └── main.yaml
    │   └── tasks/
    │       └── main.yaml
    ├── mysql/
    │   ├── defaults/
    │   │   └── main.yaml
    │   └── tasks/
    │       └── main.yaml
    ├── mysqlbackup/
    │   ├── defaults/
    │   │   └── main.yaml
    │   ├── tasks/
    │   │   └── main.yaml
    │   └── templates/
    │       └── backup_mysql.sh.j2
    └── php/
        ├── defaults/
        │   └── main.yaml
        ├── handlers/
        │   └── main.yaml
        └── tasks/
            └── main.yaml
```

`files/`: directory containing templates and other files required by the playbook.

`tasks/`: directory to store execute steps.

`group_vars/`: directory to save variable files. A default.yml var file is included by default.

`playbook.yml`: the playbook file.

Feature: 

* Setup apache, php, mysql, backup, deploy website with CI.

## How to use

Add ssh key on local `ansible_ssh_private_key_file=~/.ssh/google_compute_engine`.

Update variables in `ansible-playbooks/group_vars`

`all.yaml`: All env

`prod.yaml`: Production env

`staging.yaml` Staging env

Apply entire playbooks

```
cd ansible-playbooks
ansible-playbook playbook.yml -i inventory.ini --limit staging
```

Apply deploy web:
```
ansible-playbook playbook.yml -i inventory.ini --limit staging --tags=deploy
```

## How to release app from GH actions

Create feature branch -> main -> prereleased (staging) -> released (prod)

## Expected results

Connect web via IP: http://34.126.80.103/

Output:

`Connected to MySQL successfully! With version 0.1.2`