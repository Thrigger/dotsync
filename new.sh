sudo dnf install -y ansible
ansible-playbook new.yaml

# Rust
if ! grep -q cargo ~/.bashrc; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# Sway
if [ ! -f ~/.config/sway/config ]; then
  echo "Copying default sway config from /etc/sway/config"
  mkdir ~/.config/sway
  cp /etc/sway/config ~/.config/sway/config
fi
if ! grep -q "Thrigger keyboard" ~/.config/sway/config; then
  echo '# Thrigger keyboard\ninput "type:keyboard" xkb_layout se' >> ~/.config/sway/config
fi

# Kanshi
if [ ! -f ~/.config/kanshi/config ]; then
  echo "Creating empty Kanshi config - See README for instructions to set it up"
  mkdir ~/.config/kanshi
  touch ~/.config/kanshi/config
fi

# Starship
if ! grep -q "starship" ~/.bashrc; then
  cargo install starship
  echo 'eval "$(starship init bash)"' >> ~/.bashrc
fi
