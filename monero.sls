{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{% set layman_repo = 'gentoo-crypto' %}

{% if layman_repo %}
add-layman:
  layman.present:
    - name: {{ layman_crypto }}
{% endif %}

{{ package.accept_keywords(
   'cryptocurrencies',
   'net-p2p/monero'
) }}

{{ package.install(
   'net-p2p/monero',
   ''
) }}

{% endif %}
