{% if grains['os'] == 'Gentoo' %}

pretty-config-files:
  portage_config.mod_init:
    - low

{% endif %}
