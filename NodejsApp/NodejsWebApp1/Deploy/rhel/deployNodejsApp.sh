sudo yum install epel-release
sudo yum install ansible

mkdir -p $HOME/ansible-nginx/tasks/
script_dir=$(dirname "$0")
cp $script_dir/deploy.yml $HOME/ansible-nginx/deploy.yml
cp $script_dir/install_nginx.yml $HOME/ansible-nginx/tasks/install_nginx.yml

sudo ansible-playbook $HOME/ansible-nginx/deploy.yml