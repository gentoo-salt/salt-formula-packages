{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'cryptocurrencies',
   'dev-python/jsonrpclib'
) }}

{{ package.accept_keywords(
   'cryptocurrencies',
   'net-misc/electrum-ltc'
) }}

{{ package.install(
   'net-misc/electrum-ltc',
   ''
) }}

{% endif %}
