ping:
	ansible all -i inventory.ini -u root -m ping

play:
	ansible-playbook playbook.yml -i inventory.ini -kK
