---

Add jenkins repo:
  pkgrepo.managed:
    - name: "deb https://pkg.jenkins.io/debian-stable binary/"
    - gpgcheck: 1
    - key_url: https://pkg.jenkins.io/debian-stable/jenkins.io.key

Install java:
  pkg.installed:
    - refresh: true
    - pkgs:
      - default-jdk

Install jenkins:
  pkg.installed:
    - refresh: true
    - pkgs:
      - jenkins

Enable the jenkins service:
  service.running:
    - name: jenkins 
    - enable: true
