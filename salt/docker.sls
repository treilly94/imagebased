---
Add docker-ce repo:
  pkgrepo.managed:
    - name: "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
    - gpgcheck: 1
    - gpgkey: https://download.docker.com/linux/ubuntu/gpg

Install docker-ce:
  pkg.installed:
    - pkgs:
      - docker-ce
      - docker-ce-cli
      - containerd.io
