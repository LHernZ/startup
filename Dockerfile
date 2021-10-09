FROM archlinux
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractivee
RUN pacman -Sy && pacman -S base-devel --noconfirm && pacman -S unzip --noconfirm && pacman -Syu cmake --noconfirm &&  pacman -S --noconfirm git && pacman -S --noconfirm ansible && pacman -S --noconfirm openssh
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
