---
Add docker-ce repo:
  pkgrepo.managed:
    - name: "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
    - gpgcheck: 1
    - key_url: https://download.docker.com/linux/ubuntu/gpg

Install docker-ce:
  pkg.installed:
    - refresh: true
    - pkgs:
      - docker-ce
      - docker-ce-cli
      - containerd.io

Enable the docker service:
  service.running:
    - name: docker
    - enable: true
