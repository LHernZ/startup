# Steps been followed for installation process

* Need to install ansible-playbook and clone git repo after its been successfully created with SSH keys for replication

* Install updates by `sudo pacman -Syu`

* Copy config from `/etc/X11/mwhmd.d/nvidia-conf` To preserve settings on restart (Will only apply for the current setup)

* Install google chrome by `yay google-chrome`

* Modified i3 config !!Need to stow the configuration

* First install docker for creating envs with `pacman -S docker` 
  then run `sudo systemctl start docker` and `sudo systemctl enable docker` 
  will need to do this after reboot
  will need to add the docker group `sudo groupadd docker` and `sudo usermod -aG docker $USER`



