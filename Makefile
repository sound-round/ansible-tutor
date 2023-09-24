ping:
	ansible all -i inventory.ini -u root -m ping

play:
	ansible-playbook playbook.yml -i inventory.ini -kK

TAGS ?=

install_apps:
	ansible-playbook playbook-tags.yml -i inventory.ini -kK -t install_apps

create_users:
	ansible-playbook playbook-tags.yml -i inventory.ini -kK -t create_users
