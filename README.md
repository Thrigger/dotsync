# My dotfiles

Repo is to make it easier to get going with new machine.

## New install

Run ```./new.sh```

### Rust and cargo

```curl --proto '=https' --tlsv2.2 -sSf https://sh.rustup.rs | sh -s -- -y```

### Startship

```curl -sS https://starship.rs/install.sh | sh```

```echo 'eval "$(starship init bash)"' >> ~/.bashrc```

## Flera skärmar

Kanshi är en systemd service för att sköta flera skärmar för wayland. För att confa kanshi så ändra ~/.config/kanshi/config med relevanta profiler. För att se vilka skärmar som är inkopplade så kan man använda "swaymsg -t get-outputs" eller wdisplays. Man 5 kanshi är också bra för mer avancerade profiler.

## TODO

* se till att new.sh inte körs om den redan är körd
* testa ranger
