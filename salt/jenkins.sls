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

# Install latest jenkins:
#   pkg.installed:
#     - refresh: true
#     - pkgs:
#       - jenkins

Install old jenkins:
  pkg.installed:
    - refresh: true
    - pkgs:
      - jenkins: "2.204.1"

Enable the jenkins service:
  service.running:
    - name: jenkins
    - enable: true

Add jenkins disk to fstab:
  file.line:
    - name: /etc/fstab
    - mode: insert
    - location: end
    - content: "LABEL=jenkins-home /var/lib/jenkins ext4 defaults,nofail,discard 0"

Create cron job to set disk permissions:
  cron.present:
    - name: "chown -R jenkins:jenkins /var/lib/jenkins"
    - special: "@reboot"
