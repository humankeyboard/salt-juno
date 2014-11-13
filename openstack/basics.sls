ntp_setup:
  salt.state:
    - tgt: '*'
    - sls: ntp.install

database_setup:
  salt.state:
    - tgt: 'controller'
    - sls: packages.database