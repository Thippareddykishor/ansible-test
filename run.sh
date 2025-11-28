git pull
if [ -z "$1" ]; then
  echo Input is expected
  exit 1
fi
ansible-playbook -i ${1}-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$1 -e env=dev