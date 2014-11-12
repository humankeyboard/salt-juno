ntp_setup:
  salt.state:
    - tgt: '*'
    - sls: ntp.install

default_packages:
  salt.state:
    - tgt: 'controller, network, compute'
    - sls: packages