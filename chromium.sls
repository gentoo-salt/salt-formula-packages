{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'chromium',
   'www-client/chromium'
) }}

{{ package.install(
   'www-client/chromium',
   ''
) }}

{% endif %}
