# kubernetes-playbook
Deploy Kubernetes Services Using Ansible

```
alias ansible-playbook='docker run -v `pwd`:/docker -w /docker --rm -it registry.rebelsoft.com/ansible ansible-playbook'
ansible-playbook kubernetes-playbook.yml -i example/services.ini -e "@example/services.yml"
```

Use Ansible Vault to encrypt services.ini

```
alias ansible-vault='docker run -v `pwd`:/docker -w /docker --rm -it registry.rebelsoft.com/ansible ansible-vault'
ansible-vault encrypt example/services.ini
```
