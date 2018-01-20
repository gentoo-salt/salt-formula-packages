{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.install(
   'app-misc/jq',
   ''
) }}

{% endif %}
