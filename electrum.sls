{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'cryptocurrencies',
   'net-misc/electrum'
) }}

{{ package.install(
   'net-misc/electrum',
   ''
) }}

{% endif %}
