# Lab

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