{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'opera',
   'www-client/opera'
) }}

{{ package.license(
   'opera',
   'www-client/opera',
   'OPERA-2014'
) }}

{{ package.install(
   'www-client/opera',
   ''
) }}

{% endif %}
