default_packages:
  salt.state:
    - tgt: 'controller|network|compute'
    - tgt_type: pcre
    - sls: runonce
