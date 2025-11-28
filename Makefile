default:
	git pull
	ansible-playbook -i $(component_name){{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)

all:
	git pull
	ansible-playbook -i mysql-{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i mongodb-{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i redis-{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i rabbitmq-{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i catalogue{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i user{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i cart{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i shipping{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i payment{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	ansible-playbook -i frontend{{ env }}.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
	