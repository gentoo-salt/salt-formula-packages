{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package-install.sls' as macro -%}

{{ macro.package_install(
   'docker-compose',
   'app-emulation/docker-compose',
   '',
   'True',
   '',
   ''
) }}

{% endif %}
