{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'gptfdisk',
   'sys-apps/gptfdisk'
) }}

{{ package.install(
   'sys-apps/gptfdisk',
   ''
) }}

{% endif %}
