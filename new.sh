sudo dnf install -y ansible
cat .i3 >> ~/.config/i3/config
ansible-playbook new.yaml --ask-become
