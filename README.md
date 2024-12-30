# Lab

## Description

Setup 

## Stack
apache2
mysql - 8.0.40
php 8.3.6

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

## How to use
Apply entire playbooks

```
cd ansible-playbooks
ansible-playbook playbook.yml -i inventory.ini --limit staging
```

Apply one tags
```
ansible-playbook playbook.yml -i inventory.ini --limit staging --tags=deploy
```

## Flyway migration

```
flyway migrate
```

## Backup

```
./scripts/backup.sh
```