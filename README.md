# kubernetes-playbook
Deploy Kubernetes Services Using Ansible

```
alias ansible-playbook='docker run -v `pwd`:/docker -w /docker --rm -it rebelsoft.com/ansible ansible-playbook'
ansible-playbook kubernetes-playbook.yml --ask-vault-pass -i services.ini -e "@services.yml"
```
