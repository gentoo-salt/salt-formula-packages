{% if grains['os'] == 'Gentoo' %}

include:
  - packages.llvm5
  - packages.mesa
  - packages.clang

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'firefox',
   'www-client/firefox'
) }}

{{ package.install(
   'www-client/firefox',
   ''
) }}

{% endif %}
