{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

apply-package-flags-gparted:
  portage_config.flags:
    - name: 'sys-block/gparted'
    - use:
      - btrfs
      - fat
      - kde
      - ntfs
      - policykit
      - reiser4
      - reiserfs
      - xfs
      - cryptsetup
    - accept_keywords:
      - ~ARCH

{%- set upgrades = salt['cmd.shell']('salt-call pkg.list_upgrades --out=json | jq -r ".[] | keys[]"').split() %}

{% for pkg in upgrades %}
{% if pkg == 'sys-block/gparted' %}
remove-gparted:
  pkg.removed:
    - name: 'sys-block/gparted'
{% endif %}
{% endfor %}

{{ package.install(
   'sys-block/gparted',
   ''
) }}

{% endif %}
