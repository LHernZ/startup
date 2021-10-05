FROM archlinux
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractivee
RUN pacman -Sy && pacman -S --noconfirm git && pacman -S --noconfirm ansible
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
