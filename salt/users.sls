---
Configure paswordless sudo:
  file.managed:
    - name: /etc/sudoers.d/all
    - makedirs: true
    - contents:
      - 'ALL ALL=(ALL) NOPASSWD: ALL'

tom:
  user.present:
    - fullname: Tom Reilly
    - shell: /bin/bash
    - empty_password: true
    - groups:
      - sudo
      - docker

tom sshkeys:
  ssh_auth.present:
    - user: tom
    - enc: ssh-rsa
    - names:
      - 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCtNKPld940pFyM4Gw4lQzc2hO43gBx2fg5cI7x2sO4FMN23X1zHLjmwBZ+GCeU0bDmWp81OR/CbLtjEVV8kDnu6R7709hE+VuM87YZ+KBMpbTMAjNRfe7dvRbg+cu9aQwBK7P17RIXznXl+aztMXce0bNvOPhoTyXueK2cC7+AV6qu/DNEY1oqVPR/YbdV2omPGaYH09FQK4dMM5V5iMVDdo45SUk6a198bpbCS2UH8GJcJiAZg5pYP6C2IVEF+3WJCBfZyx6nvdwfOeXq/qC/i6aSerjxax52prP97B3y9V9POR+fiQD+/2CaSuRyKdU3fkOY+yINOLbZ6JXjSZkLw5CnWfMfT3dD0vDRoPz23xsuZIOK8wEiLKzukgBf7XkK1vQoPxzsDct39owPAA4wutuTjEoPFRV13WTzy0tnLQ5WlKLoDmujPaFKbNvoIiyIW2XQUmm3ZWOBoDD0UIfMqead6xZXbntliUwKbPkvI4BQFDfIFeIHaTHqOuHoI3i9JNY3b6pD+xOKXUWNbhTmGltys93SqTjmHw2Md6UdhKaQe7va6TxpGE/X8Y4DHWPAqp+isXAoS2q+/6pPCgNtNN8mBCEFdS9IPNaeUjOk4pxBxLc0786/zsJonPQsiMFbLm2bJHmBjIstZ9PYwxTGvRdch5uW7Ayqm/eY+CO1Iw== treilly94@live.com'
      - 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCfYRIUoBRRZfSQtxL8jZWpIUPQN8D5ZbsE2NEHnNLdGHZqUB8RZXz0xPg55swNO+utsmVsr8Ac00wUkwWM+4flZDQPoS0KFlNU6KWnNjefvMq8BbpDhPrpa+l8v6ZW66DSSzvxXKivRvBEb7KkOPZohZkWFRCJwyva1m4J1oANfvCUuMahrdEGMEEpCbhLCe5Dmg5G30BzAkCvsYTdaMc8RX8RuDEiVGCF/vk5dMSa2494B03xvI3PhqFNlhJ4zRphLpmEZW4lvUZk4gL2l3OG4hekRVFL7wUejzCOTSuNCg/JsXZGtr5FScGg8wqEd4toJHnASD2N3HcfxS7LM36F thomas@uk-l9l8sgh2.groupinfra.com'
