{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'vivaldi',
   'www-client/vivaldi'
) }}

{{ package.license(
   'vivaldi',
   'www-client/vivaldi',
   'Vivaldi'
) }}

{{ package.install(
   'www-client/vivaldi',
   ''
) }}

{% endif %}
