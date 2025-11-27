default:
	git pull
	ansible-playbook -i $(component_name)-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=$(component_name) -e env=$(env)

all:
	