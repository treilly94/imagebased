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
      - 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCu2KHV1d65suNiSMNAaI0slgj1WmWgUFAiRG3f5gq+ee/fyUtPeJE2zD95jDx1lGH5U8q9Eqi35XAFNyWOeJ1CJn/u7oGk7wAndZiMmrRCh25l+pYnKAwLGp+h//QrN0QmTtxHgN1CUjjjIoi0jytF/xoU+G7NVJnGuT4fyut5JJCCimHKQZhwua9IGDZFSYlrZM3FN8QrfzpZyr3HEOMo1h4OTVEXPgZ0bxNAI7WnAf9Jz5eLVCZPLkRyZA825lX5F97ZGYsLNNrhRzs65dzYguhzyp/JfbpGFhy0Nr5wNyNPKGdeXTJpABfFCRoM+yzwhyYcvfA+V/0XVFaX1vIxDEdY/Uhg0hUcCO4qEP9E/f4pewjwT34PIQgdbNxdK0Uglmwjp2eP3gkBqar4kSF+oGrRSOnMufOe4pNYMZC8pkfLBHPMuGtOH+BuYe34zw0cFQTR/tz+rcQgddeyrR1mvP8KSmOpNh3M18isoHbnvQKtOtR5DCgARy6OXDkYJV7Y6RWowDVKPUuiN6zLC/WYD3U8s0jvrfe452Os3XyP9PmVdSlcP67Dg1fTma2LiGnUaSb2RZHqdgNriyfgs89qwMZ3f0OdwiBtq6XINZ+kVcnOqkuvA0AMoeH9tEwzFQMMbQByQBA9cqPhrWdoMHUDShdk7/iRX/rZqeZ64DTvHw== treilly94@live.com'
