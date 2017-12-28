packages
======================
(Gentoo Linux only)
This folder includes salt states which can be enabled as grain 'packages' in the minion config.
Grain 'roles' or grain 'packages' can be enabled in the minion config file '/etc/salt/grains' as follows:
------------------
roles:
  - virtualization
  - graphics
  - multimedia

packages:
  - libreoffice
  - firefox
  - gparted
------------------

Example of top.sls configuration which enables these roles on the minions:
.
.
.

Available states
======================
``packages.init``
----------------------
Installs the packages specified in the grains 'packages' list

``packages.chrome``
----------------------
Installs www-browsers/google-chrome package (and its depenencies)

``packages.chromium``
----------------------
Installs www-browsers/chromium package (and its depenencies)

``packages.firefox``
----------------------
Installs www-browsers/firefox package (and its depenencies)

``packages.gparted``
----------------------
Installs sys-block/gparted package (and its depenencies)

``packages.gptfdisk``
----------------------
Installs sys-apps/gptfdisk package (and its depenencies)

``virtualbox.deps``
----------------------
Check /usr/src/linux/.config for required kernel modules and accepts license

Documentation
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

License
======================
Apache-2.0 (please view attached LICENSE file for complete details)
