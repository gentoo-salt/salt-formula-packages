{% if grains['os'] == 'Gentoo' %}

include:
  - packages.augeas

{%- import 'macros/package.sls' as package -%}
{% set rc_file = '/etc/rc.conf' %}

{{ package.install(
   'sys-apps/openrc',
   ''
) }}

update-rc-conf:
  cmd.run:
    - name: "bash -c yes 2>/dev/null | etc-update --automode -3 {{ rc_file }} -y"

{% for item in [{'rc_parallel':'YES','rc_interactive':'YES','rc_depend_strict':'NO','rc_logger':'YES','rc_log_path':'/var/log/rc.log','unicode':'YES'}] %}
{% for option, value in item.iteritems() %}
uncomment-{{ option }}:
  file.uncomment:
    - name: {{ rc_file }}
    - regex: {{ option }}=

set-{{ option }}:
  augeas.change:
    - lens: Shellvars.lns 
    - uncomment: true
    - context: /files/{{ rc_file }}
    - changes:
      - set {{ option }} \"{{ value }}\"
{% endfor %}
{% endfor %}

{% endif %}
