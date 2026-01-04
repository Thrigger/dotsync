sudo dnf install -y ansible
ansible-playbook new.yaml

# Rust
if ! grep -q cargo ~/.bashrc
then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# Install Starship
if ! grep -q starship ~/.bashrc
then
  cargo install starship
  echo 'eval "$(starship init bash)"' >> ~/.bashrc
fi
