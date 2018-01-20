{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'cryptocurrencies',
   'net-p2p/go-ethereum'
) }}

{{ package.install(
   'net-p2p/go-ethereum',
   ''
) }}

{% endif %}
