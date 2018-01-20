{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'mc',
   'app-misc/mc'
) }}

{{ package.install(
   'app-misc/mc',
   ''
) }}

{% endif %}
