{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.install(
   'sys-apps/portage',
   ''
) }}

{% endif %}
