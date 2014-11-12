python-software-properties:
  pkg.installed

juno-repo:
  cmd.run:
    - name: add-apt-repository cloud-archive:juno

update:
  cmd.run:
    - name: apt-get update -y && apt-get dist-upgrade -y