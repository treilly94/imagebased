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
      - 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDW7A0SvRu0iu1lQbHczCFwviS4SSbsTTGVvT6FgB4rmXFbLd0sE0xkjsKmWqZYDiH8GPgOmusdNmf96jx2QVS5KD8L7lRjlRZ1HQbvwMD2INSoJ2kkwTNq1GbxsPA/YkQ6+wlBDBcGS2gDYJHW+DEAeYn7Z1Q8UQr2YBXO5ZUkU0aHZFDlnHDKj+yA5YgbW+fc/w8UYR9I8OWmS/vvorv8v13aOSbbxTcHBFPIpjEJu5cIbakRcNs071MSnl67/8tJhfYW+IapCOsN3NEZ2K/9Pk9N0v8EtikRLx8u1Ajjkv6vDDIlEObt3952n6J7l0JVycaRYz8cN4+z0kNaljQu5c9DxollM6ryuSs9wEQHd4RwXnTCJG4NX8pHfLiy67NLvpEyQThTRoi3I3w6yGbCK984TsXZbJ+YV5F/lvIfyk1PRtrT+uN5oBaqYamnYDIv/kL9WwN2kw+NLnLsOyNlwwLJ1dAWQSdgB5Df6JALRpitb60PaEJvAFanuT+N+JAjug6UmJSzRec1aS0OiE1S/vfJwbJBhowyUWbOsD9mH98qkGTrAMUvejFjOJ3TNrXCMvm6oa6unwopHtVUQ+Lf+pJWa2Jfoje5QQy7RySi3ajslwT7sI2HXyO92dfAdweBr1uGocYejyvjZMFYFv51L5Lin9uiUcsAqleuulx3GQ== treilly94@live.com'
