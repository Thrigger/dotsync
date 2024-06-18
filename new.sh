sudo dnf install ansible
cat .bashrc >> ~/.bashrc
cat .vimrc >> ~/.vimrc
cat .i3 >> ~/.config/i3/config
ansible-playbook new.yml
