ping:
	ansible all -i inventory.ini -u root -m ping

PLAYBOOK ?= playbook.yml
play:
	ansible-playbook $(PLAYBOOK) -i inventory.ini -kK

TAGS ?= install_apps

run:
	ansible-playbook playbook-tags.yml -i inventory.ini -kK -t $(TAGS)
install_apps:
	make run TAGS=install_apps

create_users:
	make run TAGS=create_users
