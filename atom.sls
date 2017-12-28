{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'atom',
   'app-editors/atom'
) }}

{{ package.install(
   'app-editors/atom',
   ''
) }}

{% endif %}
